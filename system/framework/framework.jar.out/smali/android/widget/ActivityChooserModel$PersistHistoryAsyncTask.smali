.class final Landroid/widget/ActivityChooserModel$PersistHistoryAsyncTask;
.super Landroid/os/AsyncTask;
.source "ActivityChooserModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/ActivityChooserModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "PersistHistoryAsyncTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Object;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Landroid/widget/ActivityChooserModel;


# direct methods
.method private constructor <init>(Landroid/widget/ActivityChooserModel;)V
    .locals 0

    .prologue
    .line 1059
    iput-object p1, p0, Landroid/widget/ActivityChooserModel$PersistHistoryAsyncTask;->this$0:Landroid/widget/ActivityChooserModel;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/widget/ActivityChooserModel;Landroid/widget/ActivityChooserModel$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/widget/ActivityChooserModel;
    .param p2, "x1"    # Landroid/widget/ActivityChooserModel$1;

    .prologue
    .line 1059
    invoke-direct {p0, p1}, Landroid/widget/ActivityChooserModel$PersistHistoryAsyncTask;-><init>(Landroid/widget/ActivityChooserModel;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 1059
    invoke-virtual {p0, p1}, Landroid/widget/ActivityChooserModel$PersistHistoryAsyncTask;->doInBackground([Ljava/lang/Object;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public varargs doInBackground([Ljava/lang/Object;)Ljava/lang/Void;
    .locals 15
    .param p1, "args"    # [Ljava/lang/Object;

    .prologue
    .line 1064
    const/4 v11, 0x0

    aget-object v2, p1, v11

    check-cast v2, Ljava/util/List;

    .line 1065
    .local v2, "historicalRecords":Ljava/util/List;, "Ljava/util/List<Landroid/widget/ActivityChooserModel$HistoricalRecord;>;"
    const/4 v11, 0x1

    aget-object v3, p1, v11

    check-cast v3, Ljava/lang/String;

    .line 1067
    .local v3, "hostoryFileName":Ljava/lang/String;
    const/4 v1, 0x0

    .line 1070
    .local v1, "fos":Ljava/io/FileOutputStream;
    :try_start_0
    iget-object v11, p0, Landroid/widget/ActivityChooserModel$PersistHistoryAsyncTask;->this$0:Landroid/widget/ActivityChooserModel;

    # getter for: Landroid/widget/ActivityChooserModel;->mContext:Landroid/content/Context;
    invoke-static {v11}, Landroid/widget/ActivityChooserModel;->access$300(Landroid/widget/ActivityChooserModel;)Landroid/content/Context;

    move-result-object v11

    const/4 v12, 0x0

    invoke-virtual {v11, v3, v12}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 1076
    invoke-static {}, Landroid/util/Xml;->newSerializer()Lorg/xmlpull/v1/XmlSerializer;

    move-result-object v10

    .line 1079
    .local v10, "serializer":Lorg/xmlpull/v1/XmlSerializer;
    const/4 v11, 0x0

    :try_start_1
    invoke-interface {v10, v1, v11}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 1080
    const-string v11, "UTF-8"

    const/4 v12, 0x1

    invoke-static {v12}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v12

    invoke-interface {v10, v11, v12}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 1081
    const/4 v11, 0x0

    const-string v12, "historical-records"

    invoke-interface {v10, v11, v12}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1083
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v9

    .line 1084
    .local v9, "recordCount":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-ge v4, v9, :cond_0

    .line 1085
    const/4 v11, 0x0

    invoke-interface {v2, v11}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/widget/ActivityChooserModel$HistoricalRecord;

    .line 1086
    .local v8, "record":Landroid/widget/ActivityChooserModel$HistoricalRecord;
    const/4 v11, 0x0

    const-string v12, "historical-record"

    invoke-interface {v10, v11, v12}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1087
    const/4 v11, 0x0

    const-string v12, "activity"

    iget-object v13, v8, Landroid/widget/ActivityChooserModel$HistoricalRecord;->activity:Landroid/content/ComponentName;

    invoke-virtual {v13}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v13

    invoke-interface {v10, v11, v12, v13}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1089
    const/4 v11, 0x0

    const-string/jumbo v12, "time"

    iget-wide v13, v8, Landroid/widget/ActivityChooserModel$HistoricalRecord;->time:J

    invoke-static {v13, v14}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v13

    invoke-interface {v10, v11, v12, v13}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1090
    const/4 v11, 0x0

    const-string/jumbo v12, "weight"

    iget v13, v8, Landroid/widget/ActivityChooserModel$HistoricalRecord;->weight:F

    invoke-static {v13}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v13

    invoke-interface {v10, v11, v12, v13}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1091
    const/4 v11, 0x0

    const-string v12, "historical-record"

    invoke-interface {v10, v11, v12}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_5
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1084
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1071
    .end local v4    # "i":I
    .end local v8    # "record":Landroid/widget/ActivityChooserModel$HistoricalRecord;
    .end local v9    # "recordCount":I
    .end local v10    # "serializer":Lorg/xmlpull/v1/XmlSerializer;
    :catch_0
    move-exception v0

    .line 1072
    .local v0, "fnfe":Ljava/io/FileNotFoundException;
    # getter for: Landroid/widget/ActivityChooserModel;->LOG_TAG:Ljava/lang/String;
    invoke-static {}, Landroid/widget/ActivityChooserModel;->access$400()Ljava/lang/String;

    move-result-object v11

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Error writing historical recrod file: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1073
    const/4 v11, 0x0

    .line 1119
    .end local v0    # "fnfe":Ljava/io/FileNotFoundException;
    :goto_1
    return-object v11

    .line 1097
    .restart local v4    # "i":I
    .restart local v9    # "recordCount":I
    .restart local v10    # "serializer":Lorg/xmlpull/v1/XmlSerializer;
    :cond_0
    const/4 v11, 0x0

    :try_start_2
    const-string v12, "historical-records"

    invoke-interface {v10, v11, v12}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1098
    invoke-interface {v10}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_5
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1110
    iget-object v11, p0, Landroid/widget/ActivityChooserModel$PersistHistoryAsyncTask;->this$0:Landroid/widget/ActivityChooserModel;

    const/4 v12, 0x1

    # setter for: Landroid/widget/ActivityChooserModel;->mCanReadHistoricalData:Z
    invoke-static {v11, v12}, Landroid/widget/ActivityChooserModel;->access$602(Landroid/widget/ActivityChooserModel;Z)Z

    .line 1111
    if-eqz v1, :cond_1

    .line 1113
    :try_start_3
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_7

    .line 1119
    .end local v4    # "i":I
    .end local v9    # "recordCount":I
    :cond_1
    :goto_2
    const/4 v11, 0x0

    goto :goto_1

    .line 1103
    :catch_1
    move-exception v5

    .line 1104
    .local v5, "iae":Ljava/lang/IllegalArgumentException;
    :try_start_4
    # getter for: Landroid/widget/ActivityChooserModel;->LOG_TAG:Ljava/lang/String;
    invoke-static {}, Landroid/widget/ActivityChooserModel;->access$400()Ljava/lang/String;

    move-result-object v11

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Error writing historical recrod file: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, p0, Landroid/widget/ActivityChooserModel$PersistHistoryAsyncTask;->this$0:Landroid/widget/ActivityChooserModel;

    # getter for: Landroid/widget/ActivityChooserModel;->mHistoryFileName:Ljava/lang/String;
    invoke-static {v13}, Landroid/widget/ActivityChooserModel;->access$500(Landroid/widget/ActivityChooserModel;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 1110
    iget-object v11, p0, Landroid/widget/ActivityChooserModel$PersistHistoryAsyncTask;->this$0:Landroid/widget/ActivityChooserModel;

    const/4 v12, 0x1

    # setter for: Landroid/widget/ActivityChooserModel;->mCanReadHistoricalData:Z
    invoke-static {v11, v12}, Landroid/widget/ActivityChooserModel;->access$602(Landroid/widget/ActivityChooserModel;Z)Z

    .line 1111
    if-eqz v1, :cond_1

    .line 1113
    :try_start_5
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_2

    .line 1114
    :catch_2
    move-exception v11

    goto :goto_2

    .line 1105
    .end local v5    # "iae":Ljava/lang/IllegalArgumentException;
    :catch_3
    move-exception v7

    .line 1106
    .local v7, "ise":Ljava/lang/IllegalStateException;
    :try_start_6
    # getter for: Landroid/widget/ActivityChooserModel;->LOG_TAG:Ljava/lang/String;
    invoke-static {}, Landroid/widget/ActivityChooserModel;->access$400()Ljava/lang/String;

    move-result-object v11

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Error writing historical recrod file: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, p0, Landroid/widget/ActivityChooserModel$PersistHistoryAsyncTask;->this$0:Landroid/widget/ActivityChooserModel;

    # getter for: Landroid/widget/ActivityChooserModel;->mHistoryFileName:Ljava/lang/String;
    invoke-static {v13}, Landroid/widget/ActivityChooserModel;->access$500(Landroid/widget/ActivityChooserModel;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 1110
    iget-object v11, p0, Landroid/widget/ActivityChooserModel$PersistHistoryAsyncTask;->this$0:Landroid/widget/ActivityChooserModel;

    const/4 v12, 0x1

    # setter for: Landroid/widget/ActivityChooserModel;->mCanReadHistoricalData:Z
    invoke-static {v11, v12}, Landroid/widget/ActivityChooserModel;->access$602(Landroid/widget/ActivityChooserModel;Z)Z

    .line 1111
    if-eqz v1, :cond_1

    .line 1113
    :try_start_7
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_4

    goto :goto_2

    .line 1114
    :catch_4
    move-exception v11

    goto :goto_2

    .line 1107
    .end local v7    # "ise":Ljava/lang/IllegalStateException;
    :catch_5
    move-exception v6

    .line 1108
    .local v6, "ioe":Ljava/io/IOException;
    :try_start_8
    # getter for: Landroid/widget/ActivityChooserModel;->LOG_TAG:Ljava/lang/String;
    invoke-static {}, Landroid/widget/ActivityChooserModel;->access$400()Ljava/lang/String;

    move-result-object v11

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Error writing historical recrod file: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, p0, Landroid/widget/ActivityChooserModel$PersistHistoryAsyncTask;->this$0:Landroid/widget/ActivityChooserModel;

    # getter for: Landroid/widget/ActivityChooserModel;->mHistoryFileName:Ljava/lang/String;
    invoke-static {v13}, Landroid/widget/ActivityChooserModel;->access$500(Landroid/widget/ActivityChooserModel;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 1110
    iget-object v11, p0, Landroid/widget/ActivityChooserModel$PersistHistoryAsyncTask;->this$0:Landroid/widget/ActivityChooserModel;

    const/4 v12, 0x1

    # setter for: Landroid/widget/ActivityChooserModel;->mCanReadHistoricalData:Z
    invoke-static {v11, v12}, Landroid/widget/ActivityChooserModel;->access$602(Landroid/widget/ActivityChooserModel;Z)Z

    .line 1111
    if-eqz v1, :cond_1

    .line 1113
    :try_start_9
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_6

    goto/16 :goto_2

    .line 1114
    :catch_6
    move-exception v11

    goto/16 :goto_2

    .line 1110
    .end local v6    # "ioe":Ljava/io/IOException;
    :catchall_0
    move-exception v11

    iget-object v12, p0, Landroid/widget/ActivityChooserModel$PersistHistoryAsyncTask;->this$0:Landroid/widget/ActivityChooserModel;

    const/4 v13, 0x1

    # setter for: Landroid/widget/ActivityChooserModel;->mCanReadHistoricalData:Z
    invoke-static {v12, v13}, Landroid/widget/ActivityChooserModel;->access$602(Landroid/widget/ActivityChooserModel;Z)Z

    .line 1111
    if-eqz v1, :cond_2

    .line 1113
    :try_start_a
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_8

    .line 1116
    :cond_2
    :goto_3
    throw v11

    .line 1114
    .restart local v4    # "i":I
    .restart local v9    # "recordCount":I
    :catch_7
    move-exception v11

    goto/16 :goto_2

    .end local v4    # "i":I
    .end local v9    # "recordCount":I
    :catch_8
    move-exception v12

    goto :goto_3
.end method
