.class public Landroid/util/EventLog;
.super Ljava/lang/Object;
.source "EventLog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/util/EventLog$Event;
    }
.end annotation


# static fields
.field private static final COMMENT_PATTERN:Ljava/lang/String; = "^\\s*(#.*)?$"

.field private static final TAG:Ljava/lang/String; = "EventLog"

.field private static final TAGS_FILE:Ljava/lang/String; = "/system/etc/event-log-tags"

.field private static final TAG_PATTERN:Ljava/lang/String; = "^\\s*(\\d+)\\s+(\\w+)\\s*(\\(.*\\))?\\s*$"

.field private static sTagCodes:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static sTagNames:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 52
    sput-object v0, Landroid/util/EventLog;->sTagCodes:Ljava/util/HashMap;

    .line 53
    sput-object v0, Landroid/util/EventLog;->sTagNames:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getTagCode(Ljava/lang/String;)I
    .locals 2
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 211
    invoke-static {}, Landroid/util/EventLog;->readTagsFile()V

    .line 212
    sget-object v1, Landroid/util/EventLog;->sTagCodes:Ljava/util/HashMap;

    invoke-virtual {v1, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 213
    .local v0, "code":Ljava/lang/Integer;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    :goto_0
    return v1

    :cond_0
    const/4 v1, -0x1

    goto :goto_0
.end method

.method public static getTagName(I)Ljava/lang/String;
    .locals 2
    .param p0, "tag"    # I

    .prologue
    .line 201
    invoke-static {}, Landroid/util/EventLog;->readTagsFile()V

    .line 202
    sget-object v0, Landroid/util/EventLog;->sTagNames:Ljava/util/HashMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public static native readEvents([ILjava/util/Collection;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([I",
            "Ljava/util/Collection",
            "<",
            "Landroid/util/EventLog$Event;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method private static declared-synchronized readTagsFile()V
    .locals 13

    .prologue
    .line 220
    const-class v10, Landroid/util/EventLog;

    monitor-enter v10

    :try_start_0
    sget-object v9, Landroid/util/EventLog;->sTagCodes:Ljava/util/HashMap;

    if-eqz v9, :cond_1

    sget-object v9, Landroid/util/EventLog;->sTagNames:Ljava/util/HashMap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v9, :cond_1

    .line 256
    .local v0, "comment":Ljava/util/regex/Pattern;
    .local v6, "reader":Ljava/io/BufferedReader;
    .local v8, "tag":Ljava/util/regex/Pattern;
    :cond_0
    :goto_0
    monitor-exit v10

    return-void

    .line 222
    .end local v0    # "comment":Ljava/util/regex/Pattern;
    .end local v6    # "reader":Ljava/io/BufferedReader;
    .end local v8    # "tag":Ljava/util/regex/Pattern;
    :cond_1
    :try_start_1
    new-instance v9, Ljava/util/HashMap;

    invoke-direct {v9}, Ljava/util/HashMap;-><init>()V

    sput-object v9, Landroid/util/EventLog;->sTagCodes:Ljava/util/HashMap;

    .line 223
    new-instance v9, Ljava/util/HashMap;

    invoke-direct {v9}, Ljava/util/HashMap;-><init>()V

    sput-object v9, Landroid/util/EventLog;->sTagNames:Ljava/util/HashMap;

    .line 225
    const-string v9, "^\\s*(#.*)?$"

    invoke-static {v9}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    .line 226
    .restart local v0    # "comment":Ljava/util/regex/Pattern;
    const-string v9, "^\\s*(\\d+)\\s+(\\w+)\\s*(\\(.*\\))?\\s*$"

    invoke-static {v9}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v8

    .line 227
    .restart local v8    # "tag":Ljava/util/regex/Pattern;
    const/4 v6, 0x0

    .line 231
    .restart local v6    # "reader":Ljava/io/BufferedReader;
    :try_start_2
    new-instance v7, Ljava/io/BufferedReader;

    new-instance v9, Ljava/io/FileReader;

    const-string v11, "/system/etc/event-log-tags"

    invoke-direct {v9, v11}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    const/16 v11, 0x100

    invoke-direct {v7, v9, v11}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_5
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 232
    .end local v6    # "reader":Ljava/io/BufferedReader;
    .local v7, "reader":Ljava/io/BufferedReader;
    :cond_2
    :goto_1
    :try_start_3
    invoke-virtual {v7}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    .local v2, "line":Ljava/lang/String;
    if-eqz v2, :cond_5

    .line 233
    invoke-virtual {v0, v2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v9

    invoke-virtual {v9}, Ljava/util/regex/Matcher;->matches()Z

    move-result v9

    if-nez v9, :cond_2

    .line 235
    invoke-virtual {v8, v2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v3

    .line 236
    .local v3, "m":Ljava/util/regex/Matcher;
    invoke-virtual {v3}, Ljava/util/regex/Matcher;->matches()Z

    move-result v9

    if-nez v9, :cond_3

    .line 237
    const-string v9, "EventLog"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Bad entry in /system/etc/event-log-tags: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v9, v11}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .line 250
    .end local v2    # "line":Ljava/lang/String;
    .end local v3    # "m":Ljava/util/regex/Matcher;
    :catch_0
    move-exception v1

    move-object v6, v7

    .line 251
    .end local v7    # "reader":Ljava/io/BufferedReader;
    .local v1, "e":Ljava/io/IOException;
    .restart local v6    # "reader":Ljava/io/BufferedReader;
    :goto_2
    :try_start_4
    const-string v9, "EventLog"

    const-string v11, "Error reading /system/etc/event-log-tags"

    invoke-static {v9, v11, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 254
    if-eqz v6, :cond_0

    :try_start_5
    invoke-virtual {v6}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_0

    :catch_1
    move-exception v9

    goto :goto_0

    .line 242
    .end local v1    # "e":Ljava/io/IOException;
    .end local v6    # "reader":Ljava/io/BufferedReader;
    .restart local v2    # "line":Ljava/lang/String;
    .restart local v3    # "m":Ljava/util/regex/Matcher;
    .restart local v7    # "reader":Ljava/io/BufferedReader;
    :cond_3
    const/4 v9, 0x1

    :try_start_6
    invoke-virtual {v3, v9}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 243
    .local v5, "num":I
    const/4 v9, 0x2

    invoke-virtual {v3, v9}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v4

    .line 244
    .local v4, "name":Ljava/lang/String;
    sget-object v9, Landroid/util/EventLog;->sTagCodes:Ljava/util/HashMap;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v9, v4, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 245
    sget-object v9, Landroid/util/EventLog;->sTagNames:Ljava/util/HashMap;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v9, v11, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_6
    .catch Ljava/lang/NumberFormatException; {:try_start_6 .. :try_end_6} :catch_2
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_1

    .line 246
    .end local v4    # "name":Ljava/lang/String;
    .end local v5    # "num":I
    :catch_2
    move-exception v1

    .line 247
    .local v1, "e":Ljava/lang/NumberFormatException;
    :try_start_7
    const-string v9, "EventLog"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Error in /system/etc/event-log-tags: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v9, v11, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_1

    .line 254
    .end local v1    # "e":Ljava/lang/NumberFormatException;
    .end local v2    # "line":Ljava/lang/String;
    .end local v3    # "m":Ljava/util/regex/Matcher;
    :catchall_0
    move-exception v9

    move-object v6, v7

    .end local v7    # "reader":Ljava/io/BufferedReader;
    .restart local v6    # "reader":Ljava/io/BufferedReader;
    :goto_3
    if-eqz v6, :cond_4

    :try_start_8
    invoke-virtual {v6}, Ljava/io/BufferedReader;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_4
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    :cond_4
    :goto_4
    :try_start_9
    throw v9
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    .line 220
    .end local v6    # "reader":Ljava/io/BufferedReader;
    .end local v8    # "tag":Ljava/util/regex/Pattern;
    :catchall_1
    move-exception v9

    monitor-exit v10

    throw v9

    .line 254
    .restart local v2    # "line":Ljava/lang/String;
    .restart local v7    # "reader":Ljava/io/BufferedReader;
    .restart local v8    # "tag":Ljava/util/regex/Pattern;
    :cond_5
    if-eqz v7, :cond_6

    :try_start_a
    invoke-virtual {v7}, Ljava/io/BufferedReader;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_3
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    :cond_6
    move-object v6, v7

    .end local v7    # "reader":Ljava/io/BufferedReader;
    .restart local v6    # "reader":Ljava/io/BufferedReader;
    goto/16 :goto_0

    .end local v6    # "reader":Ljava/io/BufferedReader;
    .restart local v7    # "reader":Ljava/io/BufferedReader;
    :catch_3
    move-exception v9

    move-object v6, v7

    .line 255
    .end local v7    # "reader":Ljava/io/BufferedReader;
    .restart local v6    # "reader":Ljava/io/BufferedReader;
    goto/16 :goto_0

    .line 254
    .end local v2    # "line":Ljava/lang/String;
    :catch_4
    move-exception v11

    goto :goto_4

    :catchall_2
    move-exception v9

    goto :goto_3

    .line 250
    :catch_5
    move-exception v1

    goto :goto_2
.end method

.method public static native writeEvent(II)I
.end method

.method public static native writeEvent(IJ)I
.end method

.method public static native writeEvent(ILjava/lang/String;)I
.end method

.method public static varargs native writeEvent(I[Ljava/lang/Object;)I
.end method
