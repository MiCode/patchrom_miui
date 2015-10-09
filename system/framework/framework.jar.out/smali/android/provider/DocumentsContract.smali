.class public final Landroid/provider/DocumentsContract;
.super Ljava/lang/Object;
.source "DocumentsContract.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/provider/DocumentsContract$Root;,
        Landroid/provider/DocumentsContract$Document;
    }
.end annotation


# static fields
.field public static final ACTION_MANAGE_DOCUMENT:Ljava/lang/String; = "android.provider.action.MANAGE_DOCUMENT"

.field public static final ACTION_MANAGE_ROOT:Ljava/lang/String; = "android.provider.action.MANAGE_ROOT"

.field public static final EXTRA_ERROR:Ljava/lang/String; = "error"

.field public static final EXTRA_INFO:Ljava/lang/String; = "info"

.field public static final EXTRA_LOADING:Ljava/lang/String; = "loading"

.field public static final EXTRA_ORIENTATION:Ljava/lang/String; = "android.content.extra.ORIENTATION"

.field public static final EXTRA_PACKAGE_NAME:Ljava/lang/String; = "android.content.extra.PACKAGE_NAME"

.field public static final EXTRA_SHOW_ADVANCED:Ljava/lang/String; = "android.content.extra.SHOW_ADVANCED"

.field public static final EXTRA_THUMBNAIL_SIZE:Ljava/lang/String; = "thumbnail_size"

.field public static final METHOD_CREATE_DOCUMENT:Ljava/lang/String; = "android:createDocument"

.field public static final METHOD_DELETE_DOCUMENT:Ljava/lang/String; = "android:deleteDocument"

.field private static final PARAM_MANAGE:Ljava/lang/String; = "manage"

.field private static final PARAM_QUERY:Ljava/lang/String; = "query"

.field private static final PATH_CHILDREN:Ljava/lang/String; = "children"

.field private static final PATH_DOCUMENT:Ljava/lang/String; = "document"

.field private static final PATH_RECENT:Ljava/lang/String; = "recent"

.field private static final PATH_ROOT:Ljava/lang/String; = "root"

.field private static final PATH_SEARCH:Ljava/lang/String; = "search"

.field public static final PROVIDER_INTERFACE:Ljava/lang/String; = "android.content.action.DOCUMENTS_PROVIDER"

.field private static final TAG:Ljava/lang/String; = "Documents"

.field private static final THUMBNAIL_BUFFER_SIZE:I = 0x20000


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    return-void
.end method

.method public static buildChildDocumentsUri(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;
    .locals 2
    .param p0, "authority"    # Ljava/lang/String;
    .param p1, "parentDocumentId"    # Ljava/lang/String;

    .prologue
    .line 561
    new-instance v0, Landroid/net/Uri$Builder;

    invoke-direct {v0}, Landroid/net/Uri$Builder;-><init>()V

    const-string v1, "content"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "document"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "children"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static buildDocumentUri(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;
    .locals 2
    .param p0, "authority"    # Ljava/lang/String;
    .param p1, "documentId"    # Ljava/lang/String;

    .prologue
    .line 545
    new-instance v0, Landroid/net/Uri$Builder;

    invoke-direct {v0}, Landroid/net/Uri$Builder;-><init>()V

    const-string v1, "content"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "document"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static buildRecentDocumentsUri(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;
    .locals 2
    .param p0, "authority"    # Ljava/lang/String;
    .param p1, "rootId"    # Ljava/lang/String;

    .prologue
    .line 531
    new-instance v0, Landroid/net/Uri$Builder;

    invoke-direct {v0}, Landroid/net/Uri$Builder;-><init>()V

    const-string v1, "content"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string/jumbo v1, "root"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string/jumbo v1, "recent"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static buildRootUri(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;
    .locals 2
    .param p0, "authority"    # Ljava/lang/String;
    .param p1, "rootId"    # Ljava/lang/String;

    .prologue
    .line 518
    new-instance v0, Landroid/net/Uri$Builder;

    invoke-direct {v0}, Landroid/net/Uri$Builder;-><init>()V

    const-string v1, "content"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string/jumbo v1, "root"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static buildRootsUri(Ljava/lang/String;)Landroid/net/Uri;
    .locals 2
    .param p0, "authority"    # Ljava/lang/String;

    .prologue
    .line 507
    new-instance v0, Landroid/net/Uri$Builder;

    invoke-direct {v0}, Landroid/net/Uri$Builder;-><init>()V

    const-string v1, "content"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string/jumbo v1, "root"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static buildSearchDocumentsUri(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;
    .locals 2
    .param p0, "authority"    # Ljava/lang/String;
    .param p1, "rootId"    # Ljava/lang/String;
    .param p2, "query"    # Ljava/lang/String;

    .prologue
    .line 577
    new-instance v0, Landroid/net/Uri$Builder;

    invoke-direct {v0}, Landroid/net/Uri$Builder;-><init>()V

    const-string v1, "content"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string/jumbo v1, "root"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string/jumbo v1, "search"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string/jumbo v1, "query"

    invoke-virtual {v0, v1, p2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static createDocument(Landroid/content/ContentProviderClient;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;
    .locals 4
    .param p0, "client"    # Landroid/content/ContentProviderClient;
    .param p1, "parentDocumentUri"    # Landroid/net/Uri;
    .param p2, "mimeType"    # Ljava/lang/String;
    .param p3, "displayName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 782
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 783
    .local v0, "in":Landroid/os/Bundle;
    const-string v2, "document_id"

    invoke-static {p1}, Landroid/provider/DocumentsContract;->getDocumentId(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 784
    const-string/jumbo v2, "mime_type"

    invoke-virtual {v0, v2, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 785
    const-string v2, "_display_name"

    invoke-virtual {v0, v2, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 787
    const-string v2, "android:createDocument"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3, v0}, Landroid/content/ContentProviderClient;->call(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v1

    .line 788
    .local v1, "out":Landroid/os/Bundle;
    invoke-virtual {p1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v2

    const-string v3, "document_id"

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/provider/DocumentsContract;->buildDocumentUri(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    return-object v2
.end method

.method public static createDocument(Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;
    .locals 4
    .param p0, "resolver"    # Landroid/content/ContentResolver;
    .param p1, "parentDocumentUri"    # Landroid/net/Uri;
    .param p2, "mimeType"    # Ljava/lang/String;
    .param p3, "displayName"    # Ljava/lang/String;

    .prologue
    .line 767
    invoke-virtual {p1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/content/ContentResolver;->acquireUnstableContentProviderClient(Ljava/lang/String;)Landroid/content/ContentProviderClient;

    move-result-object v0

    .line 770
    .local v0, "client":Landroid/content/ContentProviderClient;
    :try_start_0
    invoke-static {v0, p1, p2, p3}, Landroid/provider/DocumentsContract;->createDocument(Landroid/content/ContentProviderClient;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 775
    invoke-static {v0}, Landroid/content/ContentProviderClient;->releaseQuietly(Landroid/content/ContentProviderClient;)V

    :goto_0
    return-object v2

    .line 771
    :catch_0
    move-exception v1

    .line 772
    .local v1, "e":Ljava/lang/Exception;
    :try_start_1
    const-string v2, "Documents"

    const-string v3, "Failed to create document"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 773
    const/4 v2, 0x0

    .line 775
    invoke-static {v0}, Landroid/content/ContentProviderClient;->releaseQuietly(Landroid/content/ContentProviderClient;)V

    goto :goto_0

    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v2

    invoke-static {v0}, Landroid/content/ContentProviderClient;->releaseQuietly(Landroid/content/ContentProviderClient;)V

    throw v2
.end method

.method public static deleteDocument(Landroid/content/ContentProviderClient;Landroid/net/Uri;)V
    .locals 3
    .param p0, "client"    # Landroid/content/ContentProviderClient;
    .param p1, "documentUri"    # Landroid/net/Uri;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 815
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 816
    .local v0, "in":Landroid/os/Bundle;
    const-string v1, "document_id"

    invoke-static {p1}, Landroid/provider/DocumentsContract;->getDocumentId(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 818
    const-string v1, "android:deleteDocument"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2, v0}, Landroid/content/ContentProviderClient;->call(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    .line 819
    return-void
.end method

.method public static deleteDocument(Landroid/content/ContentResolver;Landroid/net/Uri;)Z
    .locals 4
    .param p0, "resolver"    # Landroid/content/ContentResolver;
    .param p1, "documentUri"    # Landroid/net/Uri;

    .prologue
    .line 799
    invoke-virtual {p1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/content/ContentResolver;->acquireUnstableContentProviderClient(Ljava/lang/String;)Landroid/content/ContentProviderClient;

    move-result-object v0

    .line 802
    .local v0, "client":Landroid/content/ContentProviderClient;
    :try_start_0
    invoke-static {v0, p1}, Landroid/provider/DocumentsContract;->deleteDocument(Landroid/content/ContentProviderClient;Landroid/net/Uri;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 803
    const/4 v2, 0x1

    .line 808
    invoke-static {v0}, Landroid/content/ContentProviderClient;->releaseQuietly(Landroid/content/ContentProviderClient;)V

    :goto_0
    return v2

    .line 804
    :catch_0
    move-exception v1

    .line 805
    .local v1, "e":Ljava/lang/Exception;
    :try_start_1
    const-string v2, "Documents"

    const-string v3, "Failed to delete document"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 806
    const/4 v2, 0x0

    .line 808
    invoke-static {v0}, Landroid/content/ContentProviderClient;->releaseQuietly(Landroid/content/ContentProviderClient;)V

    goto :goto_0

    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v2

    invoke-static {v0}, Landroid/content/ContentProviderClient;->releaseQuietly(Landroid/content/ContentProviderClient;)V

    throw v2
.end method

.method public static getDocumentId(Landroid/net/Uri;)Ljava/lang/String;
    .locals 4
    .param p0, "documentUri"    # Landroid/net/Uri;

    .prologue
    .line 624
    invoke-virtual {p0}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v0

    .line 625
    .local v0, "paths":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x2

    if-ge v1, v2, :cond_0

    .line 626
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Not a document: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 628
    :cond_0
    const-string v1, "document"

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 629
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Not a document: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 631
    :cond_1
    const/4 v1, 0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    return-object v1
.end method

.method public static getDocumentThumbnail(Landroid/content/ContentProviderClient;Landroid/net/Uri;Landroid/graphics/Point;Landroid/os/CancellationSignal;)Landroid/graphics/Bitmap;
    .locals 23
    .param p0, "client"    # Landroid/content/ContentProviderClient;
    .param p1, "documentUri"    # Landroid/net/Uri;
    .param p2, "size"    # Landroid/graphics/Point;
    .param p3, "signal"    # Landroid/os/CancellationSignal;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 687
    new-instance v19, Landroid/os/Bundle;

    invoke-direct/range {v19 .. v19}, Landroid/os/Bundle;-><init>()V

    .line 688
    .local v19, "openOpts":Landroid/os/Bundle;
    const-string/jumbo v5, "thumbnail_size"

    move-object/from16 v0, v19

    move-object/from16 v1, p2

    invoke-virtual {v0, v5, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 690
    const/4 v11, 0x0

    .line 691
    .local v11, "afd":Landroid/content/res/AssetFileDescriptor;
    const/4 v4, 0x0

    .line 693
    .local v4, "bitmap":Landroid/graphics/Bitmap;
    :try_start_0
    const-string v5, "image/*"

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v19

    move-object/from16 v3, p3

    invoke-virtual {v0, v1, v5, v2, v3}, Landroid/content/ContentProviderClient;->openTypedAssetFileDescriptor(Landroid/net/Uri;Ljava/lang/String;Landroid/os/Bundle;Landroid/os/CancellationSignal;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v11

    .line 695
    invoke-virtual {v11}, Landroid/content/res/AssetFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v14

    .line 696
    .local v14, "fd":Ljava/io/FileDescriptor;
    invoke-virtual {v11}, Landroid/content/res/AssetFileDescriptor;->getStartOffset()J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v17

    .line 700
    .local v17, "offset":J
    const/16 v16, 0x0

    .line 702
    .local v16, "is":Ljava/io/BufferedInputStream;
    :try_start_1
    sget-object v5, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    sget v6, Llibcore/io/OsConstants;->SEEK_SET:I

    move-wide/from16 v0, v17

    invoke-interface {v5, v14, v0, v1, v6}, Llibcore/io/Os;->lseek(Ljava/io/FileDescriptor;JI)J
    :try_end_1
    .catch Llibcore/io/ErrnoException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 710
    :goto_0
    :try_start_2
    new-instance v20, Landroid/graphics/BitmapFactory$Options;

    invoke-direct/range {v20 .. v20}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 711
    .local v20, "opts":Landroid/graphics/BitmapFactory$Options;
    const/4 v5, 0x1

    move-object/from16 v0, v20

    iput-boolean v5, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 712
    if-eqz v16, :cond_1

    .line 713
    const/4 v5, 0x0

    move-object/from16 v0, v16

    move-object/from16 v1, v20

    invoke-static {v0, v5, v1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 718
    :goto_1
    move-object/from16 v0, v20

    iget v5, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    move-object/from16 v0, p2

    iget v6, v0, Landroid/graphics/Point;->x:I

    div-int v22, v5, v6

    .line 719
    .local v22, "widthSample":I
    move-object/from16 v0, v20

    iget v5, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    move-object/from16 v0, p2

    iget v6, v0, Landroid/graphics/Point;->y:I

    div-int v15, v5, v6

    .line 721
    .local v15, "heightSample":I
    const/4 v5, 0x0

    move-object/from16 v0, v20

    iput-boolean v5, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 722
    move/from16 v0, v22

    invoke-static {v0, v15}, Ljava/lang/Math;->min(II)I

    move-result v5

    move-object/from16 v0, v20

    iput v5, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 723
    if-eqz v16, :cond_2

    .line 724
    invoke-virtual/range {v16 .. v16}, Ljava/io/BufferedInputStream;->reset()V

    .line 725
    const/4 v5, 0x0

    move-object/from16 v0, v16

    move-object/from16 v1, v20

    invoke-static {v0, v5, v1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 738
    :goto_2
    invoke-virtual {v11}, Landroid/content/res/AssetFileDescriptor;->getExtras()Landroid/os/Bundle;

    move-result-object v13

    .line 739
    .local v13, "extras":Landroid/os/Bundle;
    if-eqz v13, :cond_3

    const-string v5, "android.content.extra.ORIENTATION"

    const/4 v6, 0x0

    invoke-virtual {v13, v5, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v21

    .line 740
    .local v21, "orientation":I
    :goto_3
    if-eqz v21, :cond_0

    .line 741
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    .line 742
    .local v7, "width":I
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    .line 744
    .local v8, "height":I
    new-instance v9, Landroid/graphics/Matrix;

    invoke-direct {v9}, Landroid/graphics/Matrix;-><init>()V

    .line 745
    .local v9, "m":Landroid/graphics/Matrix;
    move/from16 v0, v21

    int-to-float v5, v0

    div-int/lit8 v6, v7, 0x2

    int-to-float v6, v6

    div-int/lit8 v10, v8, 0x2

    int-to-float v10, v10

    invoke-virtual {v9, v5, v6, v10}, Landroid/graphics/Matrix;->setRotate(FFF)V

    .line 746
    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v10, 0x0

    invoke-static/range {v4 .. v10}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v4

    .line 749
    .end local v7    # "width":I
    .end local v8    # "height":I
    .end local v9    # "m":Landroid/graphics/Matrix;
    :cond_0
    invoke-static {v11}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 752
    return-object v4

    .line 703
    .end local v13    # "extras":Landroid/os/Bundle;
    .end local v15    # "heightSample":I
    .end local v20    # "opts":Landroid/graphics/BitmapFactory$Options;
    .end local v21    # "orientation":I
    .end local v22    # "widthSample":I
    :catch_0
    move-exception v12

    .line 704
    .local v12, "e":Llibcore/io/ErrnoException;
    :try_start_3
    new-instance v16, Ljava/io/BufferedInputStream;

    .end local v16    # "is":Ljava/io/BufferedInputStream;
    new-instance v5, Ljava/io/FileInputStream;

    invoke-direct {v5, v14}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V

    const/high16 v6, 0x20000

    move-object/from16 v0, v16

    invoke-direct {v0, v5, v6}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V

    .line 705
    .restart local v16    # "is":Ljava/io/BufferedInputStream;
    const/high16 v5, 0x20000

    move-object/from16 v0, v16

    invoke-virtual {v0, v5}, Ljava/io/BufferedInputStream;->mark(I)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_0

    .line 749
    .end local v12    # "e":Llibcore/io/ErrnoException;
    .end local v14    # "fd":Ljava/io/FileDescriptor;
    .end local v16    # "is":Ljava/io/BufferedInputStream;
    .end local v17    # "offset":J
    :catchall_0
    move-exception v5

    invoke-static {v11}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    throw v5

    .line 715
    .restart local v14    # "fd":Ljava/io/FileDescriptor;
    .restart local v16    # "is":Ljava/io/BufferedInputStream;
    .restart local v17    # "offset":J
    .restart local v20    # "opts":Landroid/graphics/BitmapFactory$Options;
    :cond_1
    const/4 v5, 0x0

    :try_start_4
    move-object/from16 v0, v20

    invoke-static {v14, v5, v0}, Landroid/graphics/BitmapFactory;->decodeFileDescriptor(Ljava/io/FileDescriptor;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_1

    .line 728
    .restart local v15    # "heightSample":I
    .restart local v22    # "widthSample":I
    :cond_2
    :try_start_5
    sget-object v5, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    sget v6, Llibcore/io/OsConstants;->SEEK_SET:I

    move-wide/from16 v0, v17

    invoke-interface {v5, v14, v0, v1, v6}, Llibcore/io/Os;->lseek(Ljava/io/FileDescriptor;JI)J
    :try_end_5
    .catch Llibcore/io/ErrnoException; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 732
    :goto_4
    const/4 v5, 0x0

    :try_start_6
    move-object/from16 v0, v20

    invoke-static {v14, v5, v0}, Landroid/graphics/BitmapFactory;->decodeFileDescriptor(Ljava/io/FileDescriptor;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v4

    goto :goto_2

    .line 729
    :catch_1
    move-exception v12

    .line 730
    .restart local v12    # "e":Llibcore/io/ErrnoException;
    invoke-virtual {v12}, Llibcore/io/ErrnoException;->rethrowAsIOException()Ljava/io/IOException;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_4

    .line 739
    .end local v12    # "e":Llibcore/io/ErrnoException;
    .restart local v13    # "extras":Landroid/os/Bundle;
    :cond_3
    const/16 v21, 0x0

    goto :goto_3
.end method

.method public static getDocumentThumbnail(Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/graphics/Point;Landroid/os/CancellationSignal;)Landroid/graphics/Bitmap;
    .locals 5
    .param p0, "resolver"    # Landroid/content/ContentResolver;
    .param p1, "documentUri"    # Landroid/net/Uri;
    .param p2, "size"    # Landroid/graphics/Point;
    .param p3, "signal"    # Landroid/os/CancellationSignal;

    .prologue
    .line 669
    invoke-virtual {p1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/content/ContentResolver;->acquireUnstableContentProviderClient(Ljava/lang/String;)Landroid/content/ContentProviderClient;

    move-result-object v0

    .line 672
    .local v0, "client":Landroid/content/ContentProviderClient;
    :try_start_0
    invoke-static {v0, p1, p2, p3}, Landroid/provider/DocumentsContract;->getDocumentThumbnail(Landroid/content/ContentProviderClient;Landroid/net/Uri;Landroid/graphics/Point;Landroid/os/CancellationSignal;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 679
    invoke-static {v0}, Landroid/content/ContentProviderClient;->releaseQuietly(Landroid/content/ContentProviderClient;)V

    :goto_0
    return-object v2

    .line 673
    :catch_0
    move-exception v1

    .line 674
    .local v1, "e":Ljava/lang/Exception;
    :try_start_1
    instance-of v2, v1, Landroid/os/OperationCanceledException;

    if-nez v2, :cond_0

    .line 675
    const-string v2, "Documents"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to load thumbnail for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 677
    :cond_0
    const/4 v2, 0x0

    .line 679
    invoke-static {v0}, Landroid/content/ContentProviderClient;->releaseQuietly(Landroid/content/ContentProviderClient;)V

    goto :goto_0

    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v2

    invoke-static {v0}, Landroid/content/ContentProviderClient;->releaseQuietly(Landroid/content/ContentProviderClient;)V

    throw v2
.end method

.method public static getRootId(Landroid/net/Uri;)Ljava/lang/String;
    .locals 4
    .param p0, "rootUri"    # Landroid/net/Uri;

    .prologue
    .line 610
    invoke-virtual {p0}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v0

    .line 611
    .local v0, "paths":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x2

    if-ge v1, v2, :cond_0

    .line 612
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Not a root: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 614
    :cond_0
    const-string/jumbo v1, "root"

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 615
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Not a root: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 617
    :cond_1
    const/4 v1, 0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    return-object v1
.end method

.method public static getSearchDocumentsQuery(Landroid/net/Uri;)Ljava/lang/String;
    .locals 1
    .param p0, "searchDocumentsUri"    # Landroid/net/Uri;

    .prologue
    .line 639
    const-string/jumbo v0, "query"

    invoke-virtual {p0, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static isDocumentUri(Landroid/content/Context;Landroid/net/Uri;)Z
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    const/4 v5, 0x0

    .line 587
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v4

    .line 588
    .local v4, "paths":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v6

    const/4 v7, 0x2

    if-ge v6, v7, :cond_1

    .line 603
    :cond_0
    :goto_0
    return v5

    .line 591
    :cond_1
    const-string v6, "document"

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 595
    new-instance v3, Landroid/content/Intent;

    const-string v6, "android.content.action.DOCUMENTS_PROVIDER"

    invoke-direct {v3, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 596
    .local v3, "intent":Landroid/content/Intent;
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    invoke-virtual {v6, v3, v5}, Landroid/content/pm/PackageManager;->queryIntentContentProviders(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v2

    .line 598
    .local v2, "infos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ResolveInfo;

    .line 599
    .local v1, "info":Landroid/content/pm/ResolveInfo;
    invoke-virtual {p1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v6

    iget-object v7, v1, Landroid/content/pm/ResolveInfo;->providerInfo:Landroid/content/pm/ProviderInfo;

    iget-object v7, v7, Landroid/content/pm/ProviderInfo;->authority:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 600
    const/4 v5, 0x1

    goto :goto_0
.end method

.method public static isManageMode(Landroid/net/Uri;)Z
    .locals 2
    .param p0, "uri"    # Landroid/net/Uri;

    .prologue
    .line 649
    const-string/jumbo v0, "manage"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/net/Uri;->getBooleanQueryParameter(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static openImageThumbnail(Ljava/io/File;)Landroid/content/res/AssetFileDescriptor;
    .locals 10
    .param p0, "file"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 829
    const/high16 v0, 0x10000000

    invoke-static {p0, v0}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    move-result-object v1

    .line 831
    .local v1, "pfd":Landroid/os/ParcelFileDescriptor;
    const/4 v6, 0x0

    .line 834
    .local v6, "extras":Landroid/os/Bundle;
    :try_start_0
    new-instance v7, Landroid/media/ExifInterface;

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v7, v0}, Landroid/media/ExifInterface;-><init>(Ljava/lang/String;)V

    .line 836
    .local v7, "exif":Landroid/media/ExifInterface;
    const-string v0, "Orientation"

    const/4 v2, -0x1

    invoke-virtual {v7, v0, v2}, Landroid/media/ExifInterface;->getAttributeInt(Ljava/lang/String;I)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 851
    :goto_0
    :pswitch_0
    invoke-virtual {v7}, Landroid/media/ExifInterface;->getThumbnailRange()[J

    move-result-object v9

    .line 852
    .local v9, "thumb":[J
    if-eqz v9, :cond_0

    .line 853
    new-instance v0, Landroid/content/res/AssetFileDescriptor;

    const/4 v2, 0x0

    aget-wide v2, v9, v2

    const/4 v4, 0x1

    aget-wide v4, v9, v4

    invoke-direct/range {v0 .. v6}, Landroid/content/res/AssetFileDescriptor;-><init>(Landroid/os/ParcelFileDescriptor;JJLandroid/os/Bundle;)V

    .line 858
    .end local v7    # "exif":Landroid/media/ExifInterface;
    .end local v9    # "thumb":[J
    :goto_1
    return-object v0

    .line 838
    .restart local v7    # "exif":Landroid/media/ExifInterface;
    :pswitch_1
    new-instance v8, Landroid/os/Bundle;

    const/4 v0, 0x1

    invoke-direct {v8, v0}, Landroid/os/Bundle;-><init>(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 839
    .end local v6    # "extras":Landroid/os/Bundle;
    .local v8, "extras":Landroid/os/Bundle;
    :try_start_1
    const-string v0, "android.content.extra.ORIENTATION"

    const/16 v2, 0x5a

    invoke-virtual {v8, v0, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    move-object v6, v8

    .line 840
    .end local v8    # "extras":Landroid/os/Bundle;
    .restart local v6    # "extras":Landroid/os/Bundle;
    goto :goto_0

    .line 842
    :pswitch_2
    :try_start_2
    new-instance v8, Landroid/os/Bundle;

    const/4 v0, 0x1

    invoke-direct {v8, v0}, Landroid/os/Bundle;-><init>(I)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 843
    .end local v6    # "extras":Landroid/os/Bundle;
    .restart local v8    # "extras":Landroid/os/Bundle;
    :try_start_3
    const-string v0, "android.content.extra.ORIENTATION"

    const/16 v2, 0xb4

    invoke-virtual {v8, v0, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    move-object v6, v8

    .line 844
    .end local v8    # "extras":Landroid/os/Bundle;
    .restart local v6    # "extras":Landroid/os/Bundle;
    goto :goto_0

    .line 846
    :pswitch_3
    :try_start_4
    new-instance v8, Landroid/os/Bundle;

    const/4 v0, 0x1

    invoke-direct {v8, v0}, Landroid/os/Bundle;-><init>(I)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    .line 847
    .end local v6    # "extras":Landroid/os/Bundle;
    .restart local v8    # "extras":Landroid/os/Bundle;
    :try_start_5
    const-string v0, "android.content.extra.ORIENTATION"

    const/16 v2, 0x10e

    invoke-virtual {v8, v0, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    move-object v6, v8

    .end local v8    # "extras":Landroid/os/Bundle;
    .restart local v6    # "extras":Landroid/os/Bundle;
    goto :goto_0

    .line 855
    .end local v7    # "exif":Landroid/media/ExifInterface;
    :catch_0
    move-exception v0

    .line 858
    :cond_0
    :goto_2
    new-instance v0, Landroid/content/res/AssetFileDescriptor;

    const-wide/16 v2, 0x0

    const-wide/16 v4, -0x1

    invoke-direct/range {v0 .. v6}, Landroid/content/res/AssetFileDescriptor;-><init>(Landroid/os/ParcelFileDescriptor;JJLandroid/os/Bundle;)V

    goto :goto_1

    .line 855
    .end local v6    # "extras":Landroid/os/Bundle;
    .restart local v7    # "exif":Landroid/media/ExifInterface;
    .restart local v8    # "extras":Landroid/os/Bundle;
    :catch_1
    move-exception v0

    move-object v6, v8

    .end local v8    # "extras":Landroid/os/Bundle;
    .restart local v6    # "extras":Landroid/os/Bundle;
    goto :goto_2

    .line 836
    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method public static setManageMode(Landroid/net/Uri;)Landroid/net/Uri;
    .locals 3
    .param p0, "uri"    # Landroid/net/Uri;

    .prologue
    .line 644
    invoke-virtual {p0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string/jumbo v1, "manage"

    const-string/jumbo v2, "true"

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method
