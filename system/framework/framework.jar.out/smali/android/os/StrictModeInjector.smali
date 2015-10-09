.class public Landroid/os/StrictModeInjector;
.super Ljava/lang/Object;
.source "StrictModeInjector.java"


# static fields
.field private static mWhiteList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 7
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Landroid/os/StrictModeInjector;->mWhiteList:Ljava/util/ArrayList;

    .line 11
    sget-object v0, Landroid/os/StrictModeInjector;->mWhiteList:Ljava/util/ArrayList;

    const-string/jumbo v1, "org.apache.http.impl.client.AbstractHttpClient"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 12
    sget-object v0, Landroid/os/StrictModeInjector;->mWhiteList:Ljava/util/ArrayList;

    const-string/jumbo v1, "miui.content.res.ThemeZipFile"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 13
    sget-object v0, Landroid/os/StrictModeInjector;->mWhiteList:Ljava/util/ArrayList;

    const-string/jumbo v1, "miui.text.ChinesePinyinConverter"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 14
    sget-object v0, Landroid/os/StrictModeInjector;->mWhiteList:Ljava/util/ArrayList;

    const-string/jumbo v1, "miui.telephony.phonenumber.ChineseTelocationConverter.java"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 15
    sget-object v0, Landroid/os/StrictModeInjector;->mWhiteList:Ljava/util/ArrayList;

    const-string v1, "com.android.okhttp.internal.http.HttpURLConnectionImpl"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 16
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isSkipStrictModeCheck(Ljava/lang/Throwable;)Z
    .locals 4
    .param p0, "originStack"    # Ljava/lang/Throwable;

    .prologue
    .line 25
    invoke-static {p0}, Landroid/os/StrictModeInjector;->parseStack(Ljava/lang/Throwable;)Ljava/util/List;

    move-result-object v1

    .line 26
    .local v1, "classNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    sget-object v3, Landroid/os/StrictModeInjector;->mWhiteList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 27
    .local v0, "className":Ljava/lang/String;
    invoke-interface {v1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 28
    const/4 v3, 0x1

    .line 31
    .end local v0    # "className":Ljava/lang/String;
    :goto_0
    return v3

    :cond_1
    const/4 v3, 0x0

    goto :goto_0
.end method

.method private static parseStack(Ljava/lang/Throwable;)Ljava/util/List;
    .locals 4
    .param p0, "originStack"    # Ljava/lang/Throwable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Throwable;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 41
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 42
    .local v0, "classNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p0}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v1

    .line 43
    .local v1, "elements":[Ljava/lang/StackTraceElement;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, v1

    if-ge v2, v3, :cond_0

    .line 44
    aget-object v3, v1, v2

    invoke-virtual {v3}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 43
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 46
    :cond_0
    return-object v0
.end method
