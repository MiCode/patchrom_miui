.class public Lcom/lbe/security/service/sdkhelper/SDKHelper;
.super Ljava/lang/Object;
.source "SDKHelper.java"


# static fields
.field public static ACTION_DEFAULT_ACTION_CHANGE:Ljava/lang/String;


# instance fields
.field private actionList:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/lbe/security/service/sdkhelper/SDKAction;",
            ">;"
        }
    .end annotation
.end field

.field private allPermList:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/lbe/security/service/sdkhelper/SDKPermission;",
            ">;"
        }
    .end annotation
.end field

.field private listener:Lcom/lbe/security/service/sdkhelper/IDefaultActionListener;

.field protected mContext:Landroid/content/Context;

.field private mService:Lcom/lbe/security/service/sdkhelper/ISDKHelperService;

.field private permFilter:I

.field private permList:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/lbe/security/service/sdkhelper/SDKPermission;",
            ">;"
        }
    .end annotation
.end field

.field private resources:Landroid/content/res/Resources;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 25
    const-string v0, "com.lbe.security.intent.default_action"

    sput-object v0, Lcom/lbe/security/service/sdkhelper/SDKHelper;->ACTION_DEFAULT_ACTION_CHANGE:Ljava/lang/String;

    .line 22
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/lbe/security/service/sdkhelper/ISDKHelperService;Ljava/lang/String;)V
    .locals 2
    .parameter "context"
    .parameter "service"
    .parameter "sdkAppName"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/16 v1, 0xfff

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput v1, p0, Lcom/lbe/security/service/sdkhelper/SDKHelper;->permFilter:I

    .line 40
    new-instance v0, Lcom/lbe/security/service/sdkhelper/SDKHelper$1;

    invoke-direct {v0, p0}, Lcom/lbe/security/service/sdkhelper/SDKHelper$1;-><init>(Lcom/lbe/security/service/sdkhelper/SDKHelper;)V

    iput-object v0, p0, Lcom/lbe/security/service/sdkhelper/SDKHelper;->listener:Lcom/lbe/security/service/sdkhelper/IDefaultActionListener;

    .line 51
    iput-object p1, p0, Lcom/lbe/security/service/sdkhelper/SDKHelper;->mContext:Landroid/content/Context;

    .line 52
    iput-object p2, p0, Lcom/lbe/security/service/sdkhelper/SDKHelper;->mService:Lcom/lbe/security/service/sdkhelper/ISDKHelperService;

    .line 53
    iget-object v0, p0, Lcom/lbe/security/service/sdkhelper/SDKHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v0, p3}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/lbe/security/service/sdkhelper/SDKHelper;->resources:Landroid/content/res/Resources;

    .line 55
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/lbe/security/service/sdkhelper/SDKHelper;->permList:Landroid/util/SparseArray;

    .line 56
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/lbe/security/service/sdkhelper/SDKHelper;->allPermList:Landroid/util/SparseArray;

    .line 57
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/lbe/security/service/sdkhelper/SDKHelper;->actionList:Landroid/util/SparseArray;

    .line 59
    invoke-direct {p0}, Lcom/lbe/security/service/sdkhelper/SDKHelper;->prepareList()V

    .line 60
    invoke-virtual {p0, v1}, Lcom/lbe/security/service/sdkhelper/SDKHelper;->setPermissionFilter(I)V

    .line 61
    iget-object v0, p0, Lcom/lbe/security/service/sdkhelper/SDKHelper;->mService:Lcom/lbe/security/service/sdkhelper/ISDKHelperService;

    iget-object v1, p0, Lcom/lbe/security/service/sdkhelper/SDKHelper;->listener:Lcom/lbe/security/service/sdkhelper/IDefaultActionListener;

    invoke-interface {v0, v1}, Lcom/lbe/security/service/sdkhelper/ISDKHelperService;->registerDefaultActionListener(Lcom/lbe/security/service/sdkhelper/IDefaultActionListener;)V

    .line 62
    return-void
.end method

.method static synthetic access$0(Lcom/lbe/security/service/sdkhelper/SDKHelper;)Landroid/util/SparseArray;
    .locals 1
    .parameter

    .prologue
    .line 35
    iget-object v0, p0, Lcom/lbe/security/service/sdkhelper/SDKHelper;->allPermList:Landroid/util/SparseArray;

    return-object v0
.end method

.method private prepareList()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 375
    iget-object v4, p0, Lcom/lbe/security/service/sdkhelper/SDKHelper;->mService:Lcom/lbe/security/service/sdkhelper/ISDKHelperService;

    invoke-interface {v4}, Lcom/lbe/security/service/sdkhelper/ISDKHelperService;->getPermissionConfig()Ljava/util/List;

    move-result-object v2

    .line 376
    .local v2, pList:Ljava/util/List;,"Ljava/util/List<Lcom/lbe/security/service/sdkhelper/SDKPermission;>;"
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_0

    .line 380
    iget-object v4, p0, Lcom/lbe/security/service/sdkhelper/SDKHelper;->mService:Lcom/lbe/security/service/sdkhelper/ISDKHelperService;

    invoke-interface {v4}, Lcom/lbe/security/service/sdkhelper/ISDKHelperService;->getActionConfig()Ljava/util/List;

    move-result-object v0

    .line 381
    .local v0, aList:Ljava/util/List;,"Ljava/util/List<Lcom/lbe/security/service/sdkhelper/SDKAction;>;"
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_1

    .line 384
    return-void

    .line 376
    .end local v0           #aList:Ljava/util/List;,"Ljava/util/List<Lcom/lbe/security/service/sdkhelper/SDKAction;>;"
    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/lbe/security/service/sdkhelper/SDKPermission;

    .line 377
    .local v3, perm:Lcom/lbe/security/service/sdkhelper/SDKPermission;
    iget-object v5, p0, Lcom/lbe/security/service/sdkhelper/SDKHelper;->allPermList:Landroid/util/SparseArray;

    iget v6, v3, Lcom/lbe/security/service/sdkhelper/SDKPermission;->permId:I

    invoke-virtual {v5, v6, v3}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    goto :goto_0

    .line 381
    .end local v3           #perm:Lcom/lbe/security/service/sdkhelper/SDKPermission;
    .restart local v0       #aList:Ljava/util/List;,"Ljava/util/List<Lcom/lbe/security/service/sdkhelper/SDKAction;>;"
    :cond_1
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lbe/security/service/sdkhelper/SDKAction;

    .line 382
    .local v1, action:Lcom/lbe/security/service/sdkhelper/SDKAction;
    iget-object v5, p0, Lcom/lbe/security/service/sdkhelper/SDKHelper;->actionList:Landroid/util/SparseArray;

    iget v6, v1, Lcom/lbe/security/service/sdkhelper/SDKAction;->action:I

    invoke-virtual {v5, v6, v1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    goto :goto_1
.end method


# virtual methods
.method public findPermissionByGroup(I)Ljava/util/List;
    .locals 4
    .parameter "group"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 277
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 278
    .local v2, result:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v3, p0, Lcom/lbe/security/service/sdkhelper/SDKHelper;->permList:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-lt v0, v3, :cond_0

    .line 285
    return-object v2

    .line 279
    :cond_0
    iget-object v3, p0, Lcom/lbe/security/service/sdkhelper/SDKHelper;->permList:Landroid/util/SparseArray;

    invoke-virtual {v3, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lbe/security/service/sdkhelper/SDKPermission;

    .line 280
    .local v1, perm:Lcom/lbe/security/service/sdkhelper/SDKPermission;
    iget v3, v1, Lcom/lbe/security/service/sdkhelper/SDKPermission;->group:I

    if-ne v3, p1, :cond_1

    .line 281
    iget-object v3, p0, Lcom/lbe/security/service/sdkhelper/SDKHelper;->permList:Landroid/util/SparseArray;

    invoke-virtual {v3, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 278
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public getAction(Lcom/lbe/security/bean/Package;I)I
    .locals 7
    .parameter "pkg"
    .parameter "permId"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/lbe/security/sdk/SDKException;
        }
    .end annotation

    .prologue
    const-wide/16 v5, 0x0

    .line 117
    int-to-long v1, p2

    invoke-virtual {p1}, Lcom/lbe/security/bean/Package;->getPermissionBitmap()J

    move-result-wide v3

    and-long/2addr v1, v3

    cmp-long v1, v1, v5

    if-nez v1, :cond_0

    .line 118
    new-instance v1, Lcom/lbe/security/sdk/SDKException;

    const-string v2, "Permission not found"

    invoke-direct {v1, v2}, Lcom/lbe/security/sdk/SDKException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 119
    :cond_0
    iget v1, p0, Lcom/lbe/security/service/sdkhelper/SDKHelper;->permFilter:I

    and-int/2addr v1, p2

    if-nez v1, :cond_1

    .line 120
    new-instance v1, Lcom/lbe/security/sdk/SDKException;

    const-string v2, "Permission locked"

    invoke-direct {v1, v2}, Lcom/lbe/security/sdk/SDKException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 121
    :cond_1
    int-to-long v1, p2

    invoke-virtual {p1}, Lcom/lbe/security/bean/Package;->getAcceptPermissions()J

    move-result-wide v3

    and-long/2addr v1, v3

    cmp-long v1, v1, v5

    if-eqz v1, :cond_2

    .line 122
    const/4 v1, 0x2

    .line 132
    :goto_0
    return v1

    .line 123
    :cond_2
    int-to-long v1, p2

    invoke-virtual {p1}, Lcom/lbe/security/bean/Package;->getPromptPermissions()J

    move-result-wide v3

    and-long/2addr v1, v3

    cmp-long v1, v1, v5

    if-eqz v1, :cond_3

    .line 124
    const/4 v1, 0x1

    goto :goto_0

    .line 125
    :cond_3
    int-to-long v1, p2

    invoke-virtual {p1}, Lcom/lbe/security/bean/Package;->getRejectPermissions()J

    move-result-wide v3

    and-long/2addr v1, v3

    cmp-long v1, v1, v5

    if-eqz v1, :cond_4

    .line 126
    const/4 v1, 0x0

    goto :goto_0

    .line 128
    :cond_4
    iget-object v1, p0, Lcom/lbe/security/service/sdkhelper/SDKHelper;->permList:Landroid/util/SparseArray;

    invoke-virtual {v1, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lbe/security/service/sdkhelper/SDKPermission;

    .line 129
    .local v0, perm:Lcom/lbe/security/service/sdkhelper/SDKPermission;
    if-nez v0, :cond_5

    .line 130
    new-instance v1, Lcom/lbe/security/sdk/SDKException;

    const-string v2, "Permission not recognized"

    invoke-direct {v1, v2}, Lcom/lbe/security/sdk/SDKException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 132
    :cond_5
    iget v1, v0, Lcom/lbe/security/service/sdkhelper/SDKPermission;->defaultAction:I

    goto :goto_0
.end method

.method public getActionColoredName(I)Landroid/text/Spanned;
    .locals 3
    .parameter "action"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/lbe/security/sdk/SDKException;
        }
    .end annotation

    .prologue
    .line 310
    iget-object v1, p0, Lcom/lbe/security/service/sdkhelper/SDKHelper;->actionList:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lbe/security/service/sdkhelper/SDKAction;

    .line 311
    .local v0, a:Lcom/lbe/security/service/sdkhelper/SDKAction;
    if-nez v0, :cond_0

    .line 312
    new-instance v1, Lcom/lbe/security/sdk/SDKException;

    const-string v2, "Action not recognized"

    invoke-direct {v1, v2}, Lcom/lbe/security/sdk/SDKException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 314
    :cond_0
    iget-object v1, p0, Lcom/lbe/security/service/sdkhelper/SDKHelper;->resources:Landroid/content/res/Resources;

    iget v2, v0, Lcom/lbe/security/service/sdkhelper/SDKAction;->coloredName:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    return-object v1
.end method

.method public getHIPSEnabled()Z
    .locals 2

    .prologue
    .line 324
    :try_start_0
    iget-object v1, p0, Lcom/lbe/security/service/sdkhelper/SDKHelper;->mService:Lcom/lbe/security/service/sdkhelper/ISDKHelperService;

    invoke-interface {v1}, Lcom/lbe/security/service/sdkhelper/ISDKHelperService;->getHIPSEnabled()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 326
    :goto_0
    return v1

    .line 325
    :catch_0
    move-exception v0

    .line 326
    .local v0, e:Ljava/lang/Exception;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getPermissionDesc(I)Ljava/lang/String;
    .locals 3
    .parameter "permId"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/lbe/security/sdk/SDKException;
        }
    .end annotation

    .prologue
    .line 212
    iget-object v1, p0, Lcom/lbe/security/service/sdkhelper/SDKHelper;->allPermList:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lbe/security/service/sdkhelper/SDKPermission;

    .line 213
    .local v0, perm:Lcom/lbe/security/service/sdkhelper/SDKPermission;
    if-nez v0, :cond_0

    .line 214
    new-instance v1, Lcom/lbe/security/sdk/SDKException;

    const-string v2, "Permission not recognized"

    invoke-direct {v1, v2}, Lcom/lbe/security/sdk/SDKException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 216
    :cond_0
    iget-object v1, p0, Lcom/lbe/security/service/sdkhelper/SDKHelper;->resources:Landroid/content/res/Resources;

    iget v2, v0, Lcom/lbe/security/service/sdkhelper/SDKPermission;->description:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getPermissionHint(I)Ljava/lang/String;
    .locals 3
    .parameter "permId"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/lbe/security/sdk/SDKException;
        }
    .end annotation

    .prologue
    .line 227
    iget-object v1, p0, Lcom/lbe/security/service/sdkhelper/SDKHelper;->allPermList:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lbe/security/service/sdkhelper/SDKPermission;

    .line 228
    .local v0, perm:Lcom/lbe/security/service/sdkhelper/SDKPermission;
    if-nez v0, :cond_0

    .line 229
    new-instance v1, Lcom/lbe/security/sdk/SDKException;

    const-string v2, "Permission not recognized"

    invoke-direct {v1, v2}, Lcom/lbe/security/sdk/SDKException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 231
    :cond_0
    iget-object v1, p0, Lcom/lbe/security/service/sdkhelper/SDKHelper;->resources:Landroid/content/res/Resources;

    iget v2, v0, Lcom/lbe/security/service/sdkhelper/SDKPermission;->hint:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getPermissionName(I)Ljava/lang/String;
    .locals 3
    .parameter "permId"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/lbe/security/sdk/SDKException;
        }
    .end annotation

    .prologue
    .line 197
    iget-object v1, p0, Lcom/lbe/security/service/sdkhelper/SDKHelper;->allPermList:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lbe/security/service/sdkhelper/SDKPermission;

    .line 198
    .local v0, perm:Lcom/lbe/security/service/sdkhelper/SDKPermission;
    if-nez v0, :cond_0

    .line 199
    new-instance v1, Lcom/lbe/security/sdk/SDKException;

    const-string v2, "Permission not recognized"

    invoke-direct {v1, v2}, Lcom/lbe/security/sdk/SDKException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 201
    :cond_0
    iget-object v1, p0, Lcom/lbe/security/service/sdkhelper/SDKHelper;->resources:Landroid/content/res/Resources;

    iget v2, v0, Lcom/lbe/security/service/sdkhelper/SDKPermission;->name:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getPermissions(Lcom/lbe/security/bean/Package;)Ljava/util/List;
    .locals 6
    .parameter "pkg"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/lbe/security/bean/Package;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 99
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 100
    .local v1, result:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Integer;>;"
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v2, p0, Lcom/lbe/security/service/sdkhelper/SDKHelper;->permList:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-lt v0, v2, :cond_0

    .line 106
    return-object v1

    .line 101
    :cond_0
    invoke-virtual {p1}, Lcom/lbe/security/bean/Package;->getPermissionBitmap()J

    move-result-wide v2

    iget-object v4, p0, Lcom/lbe/security/service/sdkhelper/SDKHelper;->permList:Landroid/util/SparseArray;

    invoke-virtual {v4, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v4

    int-to-long v4, v4

    and-long/2addr v2, v4

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_1

    .line 102
    iget-object v2, p0, Lcom/lbe/security/service/sdkhelper/SDKHelper;->permList:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 100
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public getROOTEnabled()Z
    .locals 2

    .prologue
    .line 347
    :try_start_0
    iget-object v1, p0, Lcom/lbe/security/service/sdkhelper/SDKHelper;->mService:Lcom/lbe/security/service/sdkhelper/ISDKHelperService;

    invoke-interface {v1}, Lcom/lbe/security/service/sdkhelper/ISDKHelperService;->getROOTEnabled()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 349
    :goto_0
    return v1

    .line 348
    :catch_0
    move-exception v0

    .line 349
    .local v0, e:Ljava/lang/Exception;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public recycle()V
    .locals 2

    .prologue
    .line 369
    :try_start_0
    iget-object v0, p0, Lcom/lbe/security/service/sdkhelper/SDKHelper;->mService:Lcom/lbe/security/service/sdkhelper/ISDKHelperService;

    iget-object v1, p0, Lcom/lbe/security/service/sdkhelper/SDKHelper;->listener:Lcom/lbe/security/service/sdkhelper/IDefaultActionListener;

    invoke-interface {v0, v1}, Lcom/lbe/security/service/sdkhelper/ISDKHelperService;->unregisterDefaultActionListener(Lcom/lbe/security/service/sdkhelper/IDefaultActionListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 372
    :goto_0
    return-void

    .line 370
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public setHIPSEnabled(Z)V
    .locals 1
    .parameter "enabled"

    .prologue
    .line 336
    :try_start_0
    iget-object v0, p0, Lcom/lbe/security/service/sdkhelper/SDKHelper;->mService:Lcom/lbe/security/service/sdkhelper/ISDKHelperService;

    invoke-interface {v0, p1}, Lcom/lbe/security/service/sdkhelper/ISDKHelperService;->setHIPSEnabled(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 339
    :goto_0
    return-void

    .line 337
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public setPermissionFilter(I)V
    .locals 4
    .parameter "filter"

    .prologue
    .line 70
    iget-object v2, p0, Lcom/lbe/security/service/sdkhelper/SDKHelper;->permList:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->clear()V

    .line 71
    iput p1, p0, Lcom/lbe/security/service/sdkhelper/SDKHelper;->permFilter:I

    .line 72
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v2, p0, Lcom/lbe/security/service/sdkhelper/SDKHelper;->allPermList:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-lt v0, v2, :cond_0

    .line 78
    return-void

    .line 73
    :cond_0
    iget-object v2, p0, Lcom/lbe/security/service/sdkhelper/SDKHelper;->allPermList:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v1

    .line 74
    .local v1, perm:I
    iget v2, p0, Lcom/lbe/security/service/sdkhelper/SDKHelper;->permFilter:I

    and-int/2addr v2, v1

    if-eqz v2, :cond_1

    .line 75
    iget-object v3, p0, Lcom/lbe/security/service/sdkhelper/SDKHelper;->permList:Landroid/util/SparseArray;

    iget-object v2, p0, Lcom/lbe/security/service/sdkhelper/SDKHelper;->allPermList:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/lbe/security/service/sdkhelper/SDKPermission;

    invoke-virtual {v3, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 72
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public setROOTEnabled(Z)V
    .locals 1
    .parameter "enabled"

    .prologue
    .line 359
    :try_start_0
    iget-object v0, p0, Lcom/lbe/security/service/sdkhelper/SDKHelper;->mService:Lcom/lbe/security/service/sdkhelper/ISDKHelperService;

    invoke-interface {v0, p1}, Lcom/lbe/security/service/sdkhelper/ISDKHelperService;->setROOTEnabled(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 362
    :goto_0
    return-void

    .line 360
    :catch_0
    move-exception v0

    goto :goto_0
.end method
