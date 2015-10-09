.class Landroid/app/DownloadManager$CursorTranslator;
.super Landroid/database/CursorWrapper;
.source "DownloadManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/DownloadManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CursorTranslator"
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private mBaseUri:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 1787
    const-class v0, Landroid/app/DownloadManager;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Landroid/app/DownloadManager$CursorTranslator;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Landroid/database/Cursor;Landroid/net/Uri;)V
    .locals 0
    .param p1, "cursor"    # Landroid/database/Cursor;
    .param p2, "baseUri"    # Landroid/net/Uri;

    .prologue
    .line 1791
    invoke-direct {p0, p1}, Landroid/database/CursorWrapper;-><init>(Landroid/database/Cursor;)V

    .line 1792
    iput-object p2, p0, Landroid/app/DownloadManager$CursorTranslator;->mBaseUri:Landroid/net/Uri;

    .line 1793
    return-void
.end method

.method private getErrorCode(I)J
    .locals 2
    .param p1, "status"    # I

    .prologue
    .line 1869
    const/16 v0, 0x190

    if-gt v0, p1, :cond_0

    const/16 v0, 0x1e8

    if-lt p1, v0, :cond_1

    :cond_0
    const/16 v0, 0x1f4

    if-gt v0, p1, :cond_2

    const/16 v0, 0x258

    if-ge p1, v0, :cond_2

    .line 1872
    :cond_1
    int-to-long v0, p1

    .line 1902
    :goto_0
    return-wide v0

    .line 1875
    :cond_2
    sparse-switch p1, :sswitch_data_0

    .line 1902
    const-wide/16 v0, 0x3e8

    goto :goto_0

    .line 1877
    :sswitch_0
    const-wide/16 v0, 0x3e9

    goto :goto_0

    .line 1881
    :sswitch_1
    const-wide/16 v0, 0x3ea

    goto :goto_0

    .line 1884
    :sswitch_2
    const-wide/16 v0, 0x3ec

    goto :goto_0

    .line 1887
    :sswitch_3
    const-wide/16 v0, 0x3ed

    goto :goto_0

    .line 1890
    :sswitch_4
    const-wide/16 v0, 0x3ee

    goto :goto_0

    .line 1893
    :sswitch_5
    const-wide/16 v0, 0x3ef

    goto :goto_0

    .line 1896
    :sswitch_6
    const-wide/16 v0, 0x3f0

    goto :goto_0

    .line 1899
    :sswitch_7
    const-wide/16 v0, 0x3f1

    goto :goto_0

    .line 1875
    :sswitch_data_0
    .sparse-switch
        0xc6 -> :sswitch_4
        0xc7 -> :sswitch_5
        0x1e8 -> :sswitch_7
        0x1e9 -> :sswitch_6
        0x1ec -> :sswitch_0
        0x1ed -> :sswitch_1
        0x1ee -> :sswitch_1
        0x1ef -> :sswitch_2
        0x1f1 -> :sswitch_3
    .end sparse-switch
.end method

.method private getLocalUri()Ljava/lang/String;
    .locals 7

    .prologue
    .line 1818
    const-string v5, "destination"

    invoke-virtual {p0, v5}, Landroid/app/DownloadManager$CursorTranslator;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {p0, v5}, Landroid/app/DownloadManager$CursorTranslator;->getLong(I)J

    move-result-wide v0

    .line 1819
    .local v0, "destinationType":J
    const-wide/16 v5, 0x4

    cmp-long v5, v0, v5

    if-eqz v5, :cond_0

    const-wide/16 v5, 0x0

    cmp-long v5, v0, v5

    if-eqz v5, :cond_0

    const-wide/16 v5, 0x6

    cmp-long v5, v0, v5

    if-nez v5, :cond_2

    .line 1822
    :cond_0
    const-string v5, "local_filename"

    invoke-virtual {p0, v5}, Landroid/app/DownloadManager$CursorTranslator;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {p0, v5}, Landroid/app/DownloadManager$CursorTranslator;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 1823
    .local v4, "localPath":Ljava/lang/String;
    if-nez v4, :cond_1

    .line 1824
    const/4 v5, 0x0

    .line 1831
    .end local v4    # "localPath":Ljava/lang/String;
    :goto_0
    return-object v5

    .line 1826
    .restart local v4    # "localPath":Ljava/lang/String;
    :cond_1
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v5}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v5}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_0

    .line 1830
    .end local v4    # "localPath":Ljava/lang/String;
    :cond_2
    const-string v5, "_id"

    invoke-virtual {p0, v5}, Landroid/app/DownloadManager$CursorTranslator;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {p0, v5}, Landroid/app/DownloadManager$CursorTranslator;->getLong(I)J

    move-result-wide v2

    .line 1831
    .local v2, "downloadId":J
    iget-object v5, p0, Landroid/app/DownloadManager$CursorTranslator;->mBaseUri:Landroid/net/Uri;

    invoke-static {v5, v2, v3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v5}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_0
.end method

.method private getPausedReason(I)J
    .locals 2
    .param p1, "status"    # I

    .prologue
    .line 1848
    packed-switch p1, :pswitch_data_0

    .line 1864
    :pswitch_0
    const-wide/16 v0, 0x4

    :goto_0
    return-wide v0

    .line 1850
    :pswitch_1
    const-wide/16 v0, 0x1

    goto :goto_0

    .line 1853
    :pswitch_2
    const-wide/16 v0, 0x2

    goto :goto_0

    .line 1856
    :pswitch_3
    const-wide/16 v0, 0x3

    goto :goto_0

    .line 1859
    :pswitch_4
    const-wide/16 v0, 0x5

    goto :goto_0

    .line 1862
    :pswitch_5
    const-wide/16 v0, 0x6

    goto :goto_0

    .line 1848
    nop

    :pswitch_data_0
    .packed-switch 0xc1
        :pswitch_4
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_5
    .end packed-switch
.end method

.method private getReason(I)J
    .locals 2
    .param p1, "status"    # I

    .prologue
    .line 1835
    invoke-static {p1}, Landroid/app/DownloadManager$CursorTranslator;->translateStatus(I)I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 1843
    const-wide/16 v0, 0x0

    :goto_0
    return-wide v0

    .line 1837
    :sswitch_0
    invoke-direct {p0, p1}, Landroid/app/DownloadManager$CursorTranslator;->getErrorCode(I)J

    move-result-wide v0

    goto :goto_0

    .line 1840
    :sswitch_1
    invoke-direct {p0, p1}, Landroid/app/DownloadManager$CursorTranslator;->getPausedReason(I)J

    move-result-wide v0

    goto :goto_0

    .line 1835
    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_1
        0x10 -> :sswitch_0
    .end sparse-switch
.end method

.method static translateStatus(I)I
    .locals 1
    .param p0, "status"    # I

    .prologue
    .line 1907
    packed-switch p0, :pswitch_data_0

    .line 1925
    :pswitch_0
    sget-boolean v0, Landroid/app/DownloadManager$CursorTranslator;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    invoke-static {p0}, Landroid/provider/Downloads$Impl;->isStatusError(I)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 1909
    :pswitch_1
    const/4 v0, 0x1

    .line 1926
    :goto_0
    return v0

    .line 1912
    :pswitch_2
    const/4 v0, 0x2

    goto :goto_0

    .line 1919
    :pswitch_3
    const/4 v0, 0x4

    goto :goto_0

    .line 1922
    :pswitch_4
    const/16 v0, 0x8

    goto :goto_0

    .line 1926
    :cond_0
    const/16 v0, 0x10

    goto :goto_0

    .line 1907
    nop

    :pswitch_data_0
    .packed-switch 0xbe
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method


# virtual methods
.method public getInt(I)I
    .locals 2
    .param p1, "columnIndex"    # I

    .prologue
    .line 1797
    invoke-virtual {p0, p1}, Landroid/app/DownloadManager$CursorTranslator;->getLong(I)J

    move-result-wide v0

    long-to-int v0, v0

    return v0
.end method

.method public getLong(I)J
    .locals 2
    .param p1, "columnIndex"    # I

    .prologue
    .line 1802
    invoke-virtual {p0, p1}, Landroid/app/DownloadManager$CursorTranslator;->getColumnName(I)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "reason"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1803
    const-string/jumbo v0, "status"

    invoke-virtual {p0, v0}, Landroid/app/DownloadManager$CursorTranslator;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-super {p0, v0}, Landroid/database/CursorWrapper;->getInt(I)I

    move-result v0

    invoke-direct {p0, v0}, Landroid/app/DownloadManager$CursorTranslator;->getReason(I)J

    move-result-wide v0

    .line 1807
    :goto_0
    return-wide v0

    .line 1804
    :cond_0
    invoke-virtual {p0, p1}, Landroid/app/DownloadManager$CursorTranslator;->getColumnName(I)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "status"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1805
    const-string/jumbo v0, "status"

    invoke-virtual {p0, v0}, Landroid/app/DownloadManager$CursorTranslator;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-super {p0, v0}, Landroid/database/CursorWrapper;->getInt(I)I

    move-result v0

    invoke-static {v0}, Landroid/app/DownloadManager$CursorTranslator;->translateStatus(I)I

    move-result v0

    int-to-long v0, v0

    goto :goto_0

    .line 1807
    :cond_1
    invoke-super {p0, p1}, Landroid/database/CursorWrapper;->getLong(I)J

    move-result-wide v0

    goto :goto_0
.end method

.method public getString(I)Ljava/lang/String;
    .locals 2
    .param p1, "columnIndex"    # I

    .prologue
    .line 1813
    invoke-virtual {p0, p1}, Landroid/app/DownloadManager$CursorTranslator;->getColumnName(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "local_uri"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Landroid/app/DownloadManager$CursorTranslator;->getLocalUri()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0, p1}, Landroid/database/CursorWrapper;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
