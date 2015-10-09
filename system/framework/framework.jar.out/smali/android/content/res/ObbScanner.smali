.class public Landroid/content/res/ObbScanner;
.super Ljava/lang/Object;
.source "ObbScanner.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getObbInfo(Ljava/lang/String;)Landroid/content/res/ObbInfo;
    .locals 6
    .param p0, "filePath"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 39
    if-nez p0, :cond_0

    .line 40
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "file path cannot be null"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 43
    :cond_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 44
    .local v1, "obbFile":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_1

    .line 45
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "OBB file does not exist: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 52
    :cond_1
    invoke-virtual {v1}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v0

    .line 54
    .local v0, "canonicalFilePath":Ljava/lang/String;
    new-instance v2, Landroid/content/res/ObbInfo;

    invoke-direct {v2}, Landroid/content/res/ObbInfo;-><init>()V

    .line 55
    .local v2, "obbInfo":Landroid/content/res/ObbInfo;
    iput-object v0, v2, Landroid/content/res/ObbInfo;->filename:Ljava/lang/String;

    .line 56
    invoke-static {v0, v2}, Landroid/content/res/ObbScanner;->getObbInfo_native(Ljava/lang/String;Landroid/content/res/ObbInfo;)V

    .line 58
    return-object v2
.end method

.method private static native getObbInfo_native(Ljava/lang/String;Landroid/content/res/ObbInfo;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method
