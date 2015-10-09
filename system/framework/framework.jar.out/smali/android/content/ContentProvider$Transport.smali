.class Landroid/content/ContentProvider$Transport;
.super Landroid/content/ContentProviderNative;
.source "ContentProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/ContentProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Transport"
.end annotation


# instance fields
.field mAppOpsManager:Landroid/app/AppOpsManager;

.field mReadOp:I

.field mWriteOp:I

.field final synthetic this$0:Landroid/content/ContentProvider;


# direct methods
.method constructor <init>(Landroid/content/ContentProvider;)V
    .locals 2

    .prologue
    const/4 v1, -0x1

    .line 176
    iput-object p1, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    invoke-direct {p0}, Landroid/content/ContentProviderNative;-><init>()V

    .line 177
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/content/ContentProvider$Transport;->mAppOpsManager:Landroid/app/AppOpsManager;

    .line 178
    iput v1, p0, Landroid/content/ContentProvider$Transport;->mReadOp:I

    .line 179
    iput v1, p0, Landroid/content/ContentProvider$Transport;->mWriteOp:I

    return-void
.end method

.method private enforceFilePermission(Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;)V
    .locals 2
    .param p1, "callingPkg"    # Ljava/lang/String;
    .param p2, "uri"    # Landroid/net/Uri;
    .param p3, "mode"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;,
            Ljava/lang/SecurityException;
        }
    .end annotation

    .prologue
    .line 382
    if-eqz p3, :cond_0

    const/16 v0, 0x77

    invoke-virtual {p3, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 383
    invoke-direct {p0, p1, p2}, Landroid/content/ContentProvider$Transport;->enforceWritePermission(Ljava/lang/String;Landroid/net/Uri;)I

    move-result v0

    if-eqz v0, :cond_1

    .line 384
    new-instance v0, Ljava/io/FileNotFoundException;

    const-string v1, "App op not allowed"

    invoke-direct {v0, v1}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 387
    :cond_0
    invoke-direct {p0, p1, p2}, Landroid/content/ContentProvider$Transport;->enforceReadPermission(Ljava/lang/String;Landroid/net/Uri;)I

    move-result v0

    if-eqz v0, :cond_1

    .line 388
    new-instance v0, Ljava/io/FileNotFoundException;

    const-string v1, "App op not allowed"

    invoke-direct {v0, v1}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 391
    :cond_1
    return-void
.end method

.method private enforceReadPermission(Ljava/lang/String;Landroid/net/Uri;)I
    .locals 3
    .param p1, "callingPkg"    # Ljava/lang/String;
    .param p2, "uri"    # Landroid/net/Uri;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .prologue
    .line 394
    iget-object v0, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    invoke-virtual {v0, p2}, Landroid/content/ContentProvider;->enforceReadPermissionInner(Landroid/net/Uri;)V

    .line 395
    iget v0, p0, Landroid/content/ContentProvider$Transport;->mReadOp:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 396
    iget-object v0, p0, Landroid/content/ContentProvider$Transport;->mAppOpsManager:Landroid/app/AppOpsManager;

    iget v1, p0, Landroid/content/ContentProvider$Transport;->mReadOp:I

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-virtual {v0, v1, v2, p1}, Landroid/app/AppOpsManager;->noteOp(IILjava/lang/String;)I

    move-result v0

    .line 398
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private enforceWritePermission(Ljava/lang/String;Landroid/net/Uri;)I
    .locals 3
    .param p1, "callingPkg"    # Ljava/lang/String;
    .param p2, "uri"    # Landroid/net/Uri;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .prologue
    .line 402
    iget-object v0, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    invoke-virtual {v0, p2}, Landroid/content/ContentProvider;->enforceWritePermissionInner(Landroid/net/Uri;)V

    .line 403
    iget v0, p0, Landroid/content/ContentProvider$Transport;->mWriteOp:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 404
    iget-object v0, p0, Landroid/content/ContentProvider$Transport;->mAppOpsManager:Landroid/app/AppOpsManager;

    iget v1, p0, Landroid/content/ContentProvider$Transport;->mWriteOp:I

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-virtual {v0, v1, v2, p1}, Landroid/app/AppOpsManager;->noteOp(IILjava/lang/String;)I

    move-result v0

    .line 406
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public applyBatch(Ljava/lang/String;Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;
    .locals 6
    .param p1, "callingPkg"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentProviderOperation;",
            ">;)[",
            "Landroid/content/ContentProviderResult;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/OperationApplicationException;
        }
    .end annotation

    .prologue
    .local p2, "operations":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    const/4 v5, 0x0

    .line 243
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ContentProviderOperation;

    .line 244
    .local v1, "operation":Landroid/content/ContentProviderOperation;
    invoke-virtual {v1}, Landroid/content/ContentProviderOperation;->isReadOperation()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 245
    invoke-virtual {v1}, Landroid/content/ContentProviderOperation;->getUri()Landroid/net/Uri;

    move-result-object v3

    invoke-direct {p0, p1, v3}, Landroid/content/ContentProvider$Transport;->enforceReadPermission(Ljava/lang/String;Landroid/net/Uri;)I

    move-result v3

    if-eqz v3, :cond_1

    .line 247
    new-instance v3, Landroid/content/OperationApplicationException;

    const-string v4, "App op not allowed"

    invoke-direct {v3, v4, v5}, Landroid/content/OperationApplicationException;-><init>(Ljava/lang/String;I)V

    throw v3

    .line 251
    :cond_1
    invoke-virtual {v1}, Landroid/content/ContentProviderOperation;->isWriteOperation()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 252
    invoke-virtual {v1}, Landroid/content/ContentProviderOperation;->getUri()Landroid/net/Uri;

    move-result-object v3

    invoke-direct {p0, p1, v3}, Landroid/content/ContentProvider$Transport;->enforceWritePermission(Ljava/lang/String;Landroid/net/Uri;)I

    move-result v3

    if-eqz v3, :cond_0

    .line 254
    new-instance v3, Landroid/content/OperationApplicationException;

    const-string v4, "App op not allowed"

    invoke-direct {v3, v4, v5}, Landroid/content/OperationApplicationException;-><init>(Ljava/lang/String;I)V

    throw v3

    .line 258
    .end local v1    # "operation":Landroid/content/ContentProviderOperation;
    :cond_2
    iget-object v3, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    # invokes: Landroid/content/ContentProvider;->setCallingPackage(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v3, p1}, Landroid/content/ContentProvider;->access$000(Landroid/content/ContentProvider;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 260
    .local v2, "original":Ljava/lang/String;
    :try_start_0
    iget-object v3, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    invoke-virtual {v3, p2}, Landroid/content/ContentProvider;->applyBatch(Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v3

    .line 262
    iget-object v4, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    # invokes: Landroid/content/ContentProvider;->setCallingPackage(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v4, v2}, Landroid/content/ContentProvider;->access$000(Landroid/content/ContentProvider;Ljava/lang/String;)Ljava/lang/String;

    return-object v3

    :catchall_0
    move-exception v3

    iget-object v4, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    # invokes: Landroid/content/ContentProvider;->setCallingPackage(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v4, v2}, Landroid/content/ContentProvider;->access$000(Landroid/content/ContentProvider;Ljava/lang/String;)Ljava/lang/String;

    throw v3
.end method

.method public bulkInsert(Ljava/lang/String;Landroid/net/Uri;[Landroid/content/ContentValues;)I
    .locals 3
    .param p1, "callingPkg"    # Ljava/lang/String;
    .param p2, "uri"    # Landroid/net/Uri;
    .param p3, "initialValues"    # [Landroid/content/ContentValues;

    .prologue
    .line 228
    invoke-direct {p0, p1, p2}, Landroid/content/ContentProvider$Transport;->enforceWritePermission(Ljava/lang/String;Landroid/net/Uri;)I

    move-result v1

    if-eqz v1, :cond_0

    .line 229
    const/4 v1, 0x0

    .line 235
    :goto_0
    return v1

    .line 231
    :cond_0
    iget-object v1, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    # invokes: Landroid/content/ContentProvider;->setCallingPackage(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v1, p1}, Landroid/content/ContentProvider;->access$000(Landroid/content/ContentProvider;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 233
    .local v0, "original":Ljava/lang/String;
    :try_start_0
    iget-object v1, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    invoke-virtual {v1, p2, p3}, Landroid/content/ContentProvider;->bulkInsert(Landroid/net/Uri;[Landroid/content/ContentValues;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    .line 235
    iget-object v2, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    # invokes: Landroid/content/ContentProvider;->setCallingPackage(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v2, v0}, Landroid/content/ContentProvider;->access$000(Landroid/content/ContentProvider;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_0

    :catchall_0
    move-exception v1

    iget-object v2, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    # invokes: Landroid/content/ContentProvider;->setCallingPackage(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v2, v0}, Landroid/content/ContentProvider;->access$000(Landroid/content/ContentProvider;Ljava/lang/String;)Ljava/lang/String;

    throw v1
.end method

.method public call(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 3
    .param p1, "callingPkg"    # Ljava/lang/String;
    .param p2, "method"    # Ljava/lang/String;
    .param p3, "arg"    # Ljava/lang/String;
    .param p4, "extras"    # Landroid/os/Bundle;

    .prologue
    .line 323
    iget-object v1, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    # invokes: Landroid/content/ContentProvider;->setCallingPackage(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v1, p1}, Landroid/content/ContentProvider;->access$000(Landroid/content/ContentProvider;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 325
    .local v0, "original":Ljava/lang/String;
    :try_start_0
    iget-object v1, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    invoke-virtual {v1, p2, p3, p4}, Landroid/content/ContentProvider;->call(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 327
    iget-object v2, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    # invokes: Landroid/content/ContentProvider;->setCallingPackage(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v2, v0}, Landroid/content/ContentProvider;->access$000(Landroid/content/ContentProvider;Ljava/lang/String;)Ljava/lang/String;

    return-object v1

    :catchall_0
    move-exception v1

    iget-object v2, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    # invokes: Landroid/content/ContentProvider;->setCallingPackage(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v2, v0}, Landroid/content/ContentProvider;->access$000(Landroid/content/ContentProvider;Ljava/lang/String;)Ljava/lang/String;

    throw v1
.end method

.method public canonicalize(Ljava/lang/String;Landroid/net/Uri;)Landroid/net/Uri;
    .locals 3
    .param p1, "callingPkg"    # Ljava/lang/String;
    .param p2, "uri"    # Landroid/net/Uri;

    .prologue
    .line 356
    invoke-direct {p0, p1, p2}, Landroid/content/ContentProvider$Transport;->enforceReadPermission(Ljava/lang/String;Landroid/net/Uri;)I

    move-result v1

    if-eqz v1, :cond_0

    .line 357
    const/4 v1, 0x0

    .line 363
    :goto_0
    return-object v1

    .line 359
    :cond_0
    iget-object v1, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    # invokes: Landroid/content/ContentProvider;->setCallingPackage(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v1, p1}, Landroid/content/ContentProvider;->access$000(Landroid/content/ContentProvider;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 361
    .local v0, "original":Ljava/lang/String;
    :try_start_0
    iget-object v1, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    invoke-virtual {v1, p2}, Landroid/content/ContentProvider;->canonicalize(Landroid/net/Uri;)Landroid/net/Uri;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 363
    iget-object v2, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    # invokes: Landroid/content/ContentProvider;->setCallingPackage(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v2, v0}, Landroid/content/ContentProvider;->access$000(Landroid/content/ContentProvider;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_0

    :catchall_0
    move-exception v1

    iget-object v2, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    # invokes: Landroid/content/ContentProvider;->setCallingPackage(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v2, v0}, Landroid/content/ContentProvider;->access$000(Landroid/content/ContentProvider;Ljava/lang/String;)Ljava/lang/String;

    throw v1
.end method

.method public createCancellationSignal()Landroid/os/ICancellationSignal;
    .locals 1

    .prologue
    .line 351
    invoke-static {}, Landroid/os/CancellationSignal;->createTransport()Landroid/os/ICancellationSignal;

    move-result-object v0

    return-object v0
.end method

.method public delete(Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 3
    .param p1, "callingPkg"    # Ljava/lang/String;
    .param p2, "uri"    # Landroid/net/Uri;
    .param p3, "selection"    # Ljava/lang/String;
    .param p4, "selectionArgs"    # [Ljava/lang/String;

    .prologue
    .line 268
    invoke-direct {p0, p1, p2}, Landroid/content/ContentProvider$Transport;->enforceWritePermission(Ljava/lang/String;Landroid/net/Uri;)I

    move-result v1

    if-eqz v1, :cond_0

    .line 269
    const/4 v1, 0x0

    .line 275
    :goto_0
    return v1

    .line 271
    :cond_0
    iget-object v1, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    # invokes: Landroid/content/ContentProvider;->setCallingPackage(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v1, p1}, Landroid/content/ContentProvider;->access$000(Landroid/content/ContentProvider;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 273
    .local v0, "original":Ljava/lang/String;
    :try_start_0
    iget-object v1, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    invoke-virtual {v1, p2, p3, p4}, Landroid/content/ContentProvider;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    .line 275
    iget-object v2, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    # invokes: Landroid/content/ContentProvider;->setCallingPackage(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v2, v0}, Landroid/content/ContentProvider;->access$000(Landroid/content/ContentProvider;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_0

    :catchall_0
    move-exception v1

    iget-object v2, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    # invokes: Landroid/content/ContentProvider;->setCallingPackage(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v2, v0}, Landroid/content/ContentProvider;->access$000(Landroid/content/ContentProvider;Ljava/lang/String;)Ljava/lang/String;

    throw v1
.end method

.method getContentProvider()Landroid/content/ContentProvider;
    .locals 1

    .prologue
    .line 182
    iget-object v0, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    return-object v0
.end method

.method public getProviderName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 187
    invoke-virtual {p0}, Landroid/content/ContentProvider$Transport;->getContentProvider()Landroid/content/ContentProvider;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getStreamTypes(Landroid/net/Uri;Ljava/lang/String;)[Ljava/lang/String;
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "mimeTypeFilter"    # Ljava/lang/String;

    .prologue
    .line 333
    iget-object v0, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    invoke-virtual {v0, p1, p2}, Landroid/content/ContentProvider;->getStreamTypes(Landroid/net/Uri;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 210
    iget-object v0, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    invoke-virtual {v0, p1}, Landroid/content/ContentProvider;->getType(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public insert(Ljava/lang/String;Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 3
    .param p1, "callingPkg"    # Ljava/lang/String;
    .param p2, "uri"    # Landroid/net/Uri;
    .param p3, "initialValues"    # Landroid/content/ContentValues;

    .prologue
    .line 215
    invoke-direct {p0, p1, p2}, Landroid/content/ContentProvider$Transport;->enforceWritePermission(Ljava/lang/String;Landroid/net/Uri;)I

    move-result v1

    if-eqz v1, :cond_0

    .line 216
    iget-object v1, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    invoke-virtual {v1, p2, p3}, Landroid/content/ContentProvider;->rejectInsert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v1

    .line 222
    :goto_0
    return-object v1

    .line 218
    :cond_0
    iget-object v1, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    # invokes: Landroid/content/ContentProvider;->setCallingPackage(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v1, p1}, Landroid/content/ContentProvider;->access$000(Landroid/content/ContentProvider;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 220
    .local v0, "original":Ljava/lang/String;
    :try_start_0
    iget-object v1, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    invoke-virtual {v1, p2, p3}, Landroid/content/ContentProvider;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 222
    iget-object v2, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    # invokes: Landroid/content/ContentProvider;->setCallingPackage(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v2, v0}, Landroid/content/ContentProvider;->access$000(Landroid/content/ContentProvider;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_0

    :catchall_0
    move-exception v1

    iget-object v2, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    # invokes: Landroid/content/ContentProvider;->setCallingPackage(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v2, v0}, Landroid/content/ContentProvider;->access$000(Landroid/content/ContentProvider;Ljava/lang/String;)Ljava/lang/String;

    throw v1
.end method

.method public openAssetFile(Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;Landroid/os/ICancellationSignal;)Landroid/content/res/AssetFileDescriptor;
    .locals 3
    .param p1, "callingPkg"    # Ljava/lang/String;
    .param p2, "uri"    # Landroid/net/Uri;
    .param p3, "mode"    # Ljava/lang/String;
    .param p4, "cancellationSignal"    # Landroid/os/ICancellationSignal;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 311
    invoke-direct {p0, p1, p2, p3}, Landroid/content/ContentProvider$Transport;->enforceFilePermission(Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;)V

    .line 312
    iget-object v1, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    # invokes: Landroid/content/ContentProvider;->setCallingPackage(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v1, p1}, Landroid/content/ContentProvider;->access$000(Landroid/content/ContentProvider;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 314
    .local v0, "original":Ljava/lang/String;
    :try_start_0
    iget-object v1, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    invoke-static {p4}, Landroid/os/CancellationSignal;->fromTransport(Landroid/os/ICancellationSignal;)Landroid/os/CancellationSignal;

    move-result-object v2

    invoke-virtual {v1, p2, p3, v2}, Landroid/content/ContentProvider;->openAssetFile(Landroid/net/Uri;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/content/res/AssetFileDescriptor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 317
    iget-object v2, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    # invokes: Landroid/content/ContentProvider;->setCallingPackage(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v2, v0}, Landroid/content/ContentProvider;->access$000(Landroid/content/ContentProvider;Ljava/lang/String;)Ljava/lang/String;

    return-object v1

    :catchall_0
    move-exception v1

    iget-object v2, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    # invokes: Landroid/content/ContentProvider;->setCallingPackage(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v2, v0}, Landroid/content/ContentProvider;->access$000(Landroid/content/ContentProvider;Ljava/lang/String;)Ljava/lang/String;

    throw v1
.end method

.method public openFile(Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;Landroid/os/ICancellationSignal;)Landroid/os/ParcelFileDescriptor;
    .locals 3
    .param p1, "callingPkg"    # Ljava/lang/String;
    .param p2, "uri"    # Landroid/net/Uri;
    .param p3, "mode"    # Ljava/lang/String;
    .param p4, "cancellationSignal"    # Landroid/os/ICancellationSignal;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 297
    invoke-direct {p0, p1, p2, p3}, Landroid/content/ContentProvider$Transport;->enforceFilePermission(Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;)V

    .line 298
    iget-object v1, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    # invokes: Landroid/content/ContentProvider;->setCallingPackage(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v1, p1}, Landroid/content/ContentProvider;->access$000(Landroid/content/ContentProvider;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 300
    .local v0, "original":Ljava/lang/String;
    :try_start_0
    iget-object v1, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    invoke-static {p4}, Landroid/os/CancellationSignal;->fromTransport(Landroid/os/ICancellationSignal;)Landroid/os/CancellationSignal;

    move-result-object v2

    invoke-virtual {v1, p2, p3, v2}, Landroid/content/ContentProvider;->openFile(Landroid/net/Uri;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/os/ParcelFileDescriptor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 303
    iget-object v2, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    # invokes: Landroid/content/ContentProvider;->setCallingPackage(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v2, v0}, Landroid/content/ContentProvider;->access$000(Landroid/content/ContentProvider;Ljava/lang/String;)Ljava/lang/String;

    return-object v1

    :catchall_0
    move-exception v1

    iget-object v2, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    # invokes: Landroid/content/ContentProvider;->setCallingPackage(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v2, v0}, Landroid/content/ContentProvider;->access$000(Landroid/content/ContentProvider;Ljava/lang/String;)Ljava/lang/String;

    throw v1
.end method

.method public openTypedAssetFile(Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;Landroid/os/Bundle;Landroid/os/ICancellationSignal;)Landroid/content/res/AssetFileDescriptor;
    .locals 3
    .param p1, "callingPkg"    # Ljava/lang/String;
    .param p2, "uri"    # Landroid/net/Uri;
    .param p3, "mimeType"    # Ljava/lang/String;
    .param p4, "opts"    # Landroid/os/Bundle;
    .param p5, "cancellationSignal"    # Landroid/os/ICancellationSignal;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 339
    const-string/jumbo v1, "r"

    invoke-direct {p0, p1, p2, v1}, Landroid/content/ContentProvider$Transport;->enforceFilePermission(Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;)V

    .line 340
    iget-object v1, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    # invokes: Landroid/content/ContentProvider;->setCallingPackage(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v1, p1}, Landroid/content/ContentProvider;->access$000(Landroid/content/ContentProvider;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 342
    .local v0, "original":Ljava/lang/String;
    :try_start_0
    iget-object v1, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    invoke-static {p5}, Landroid/os/CancellationSignal;->fromTransport(Landroid/os/ICancellationSignal;)Landroid/os/CancellationSignal;

    move-result-object v2

    invoke-virtual {v1, p2, p3, p4, v2}, Landroid/content/ContentProvider;->openTypedAssetFile(Landroid/net/Uri;Ljava/lang/String;Landroid/os/Bundle;Landroid/os/CancellationSignal;)Landroid/content/res/AssetFileDescriptor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 345
    iget-object v2, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    # invokes: Landroid/content/ContentProvider;->setCallingPackage(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v2, v0}, Landroid/content/ContentProvider;->access$000(Landroid/content/ContentProvider;Ljava/lang/String;)Ljava/lang/String;

    return-object v1

    :catchall_0
    move-exception v1

    iget-object v2, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    # invokes: Landroid/content/ContentProvider;->setCallingPackage(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v2, v0}, Landroid/content/ContentProvider;->access$000(Landroid/content/ContentProvider;Ljava/lang/String;)Ljava/lang/String;

    throw v1
.end method

.method public query(Ljava/lang/String;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/ICancellationSignal;)Landroid/database/Cursor;
    .locals 8
    .param p1, "callingPkg"    # Ljava/lang/String;
    .param p2, "uri"    # Landroid/net/Uri;
    .param p3, "projection"    # [Ljava/lang/String;
    .param p4, "selection"    # Ljava/lang/String;
    .param p5, "selectionArgs"    # [Ljava/lang/String;
    .param p6, "sortOrder"    # Ljava/lang/String;
    .param p7, "cancellationSignal"    # Landroid/os/ICancellationSignal;

    .prologue
    .line 194
    invoke-direct {p0, p1, p2}, Landroid/content/ContentProvider$Transport;->enforceReadPermission(Ljava/lang/String;Landroid/net/Uri;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 195
    iget-object v0, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    invoke-static {p7}, Landroid/os/CancellationSignal;->fromTransport(Landroid/os/ICancellationSignal;)Landroid/os/CancellationSignal;

    move-result-object v6

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    move-object v4, p5

    move-object v5, p6

    invoke-virtual/range {v0 .. v6}, Landroid/content/ContentProvider;->rejectQuery(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v0

    .line 204
    :goto_0
    return-object v0

    .line 198
    :cond_0
    iget-object v0, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    # invokes: Landroid/content/ContentProvider;->setCallingPackage(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v0, p1}, Landroid/content/ContentProvider;->access$000(Landroid/content/ContentProvider;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 200
    .local v7, "original":Ljava/lang/String;
    :try_start_0
    iget-object v0, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    invoke-static {p7}, Landroid/os/CancellationSignal;->fromTransport(Landroid/os/ICancellationSignal;)Landroid/os/CancellationSignal;

    move-result-object v6

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    move-object v4, p5

    move-object v5, p6

    invoke-virtual/range {v0 .. v6}, Landroid/content/ContentProvider;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 204
    iget-object v1, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    # invokes: Landroid/content/ContentProvider;->setCallingPackage(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v1, v7}, Landroid/content/ContentProvider;->access$000(Landroid/content/ContentProvider;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    # invokes: Landroid/content/ContentProvider;->setCallingPackage(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v1, v7}, Landroid/content/ContentProvider;->access$000(Landroid/content/ContentProvider;Ljava/lang/String;)Ljava/lang/String;

    throw v0
.end method

.method public uncanonicalize(Ljava/lang/String;Landroid/net/Uri;)Landroid/net/Uri;
    .locals 3
    .param p1, "callingPkg"    # Ljava/lang/String;
    .param p2, "uri"    # Landroid/net/Uri;

    .prologue
    .line 369
    invoke-direct {p0, p1, p2}, Landroid/content/ContentProvider$Transport;->enforceReadPermission(Ljava/lang/String;Landroid/net/Uri;)I

    move-result v1

    if-eqz v1, :cond_0

    .line 370
    const/4 v1, 0x0

    .line 376
    :goto_0
    return-object v1

    .line 372
    :cond_0
    iget-object v1, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    # invokes: Landroid/content/ContentProvider;->setCallingPackage(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v1, p1}, Landroid/content/ContentProvider;->access$000(Landroid/content/ContentProvider;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 374
    .local v0, "original":Ljava/lang/String;
    :try_start_0
    iget-object v1, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    invoke-virtual {v1, p2}, Landroid/content/ContentProvider;->uncanonicalize(Landroid/net/Uri;)Landroid/net/Uri;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 376
    iget-object v2, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    # invokes: Landroid/content/ContentProvider;->setCallingPackage(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v2, v0}, Landroid/content/ContentProvider;->access$000(Landroid/content/ContentProvider;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_0

    :catchall_0
    move-exception v1

    iget-object v2, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    # invokes: Landroid/content/ContentProvider;->setCallingPackage(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v2, v0}, Landroid/content/ContentProvider;->access$000(Landroid/content/ContentProvider;Ljava/lang/String;)Ljava/lang/String;

    throw v1
.end method

.method public update(Ljava/lang/String;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 3
    .param p1, "callingPkg"    # Ljava/lang/String;
    .param p2, "uri"    # Landroid/net/Uri;
    .param p3, "values"    # Landroid/content/ContentValues;
    .param p4, "selection"    # Ljava/lang/String;
    .param p5, "selectionArgs"    # [Ljava/lang/String;

    .prologue
    .line 282
    invoke-direct {p0, p1, p2}, Landroid/content/ContentProvider$Transport;->enforceWritePermission(Ljava/lang/String;Landroid/net/Uri;)I

    move-result v1

    if-eqz v1, :cond_0

    .line 283
    const/4 v1, 0x0

    .line 289
    :goto_0
    return v1

    .line 285
    :cond_0
    iget-object v1, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    # invokes: Landroid/content/ContentProvider;->setCallingPackage(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v1, p1}, Landroid/content/ContentProvider;->access$000(Landroid/content/ContentProvider;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 287
    .local v0, "original":Ljava/lang/String;
    :try_start_0
    iget-object v1, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    invoke-virtual {v1, p2, p3, p4, p5}, Landroid/content/ContentProvider;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    .line 289
    iget-object v2, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    # invokes: Landroid/content/ContentProvider;->setCallingPackage(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v2, v0}, Landroid/content/ContentProvider;->access$000(Landroid/content/ContentProvider;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_0

    :catchall_0
    move-exception v1

    iget-object v2, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    # invokes: Landroid/content/ContentProvider;->setCallingPackage(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v2, v0}, Landroid/content/ContentProvider;->access$000(Landroid/content/ContentProvider;Ljava/lang/String;)Ljava/lang/String;

    throw v1
.end method
