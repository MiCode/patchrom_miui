.class Lcom/lbe/security/service/sdkhelper/SDKHelper$1;
.super Lcom/lbe/security/service/sdkhelper/IDefaultActionListener$Stub;
.source "SDKHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lbe/security/service/sdkhelper/SDKHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lbe/security/service/sdkhelper/SDKHelper;


# direct methods
.method constructor <init>(Lcom/lbe/security/service/sdkhelper/SDKHelper;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/lbe/security/service/sdkhelper/SDKHelper$1;->this$0:Lcom/lbe/security/service/sdkhelper/SDKHelper;

    .line 40
    invoke-direct {p0}, Lcom/lbe/security/service/sdkhelper/IDefaultActionListener$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public OnDefaultActionChanged(II)V
    .locals 2
    .parameter "permId"
    .parameter "action"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 43
    iget-object v1, p0, Lcom/lbe/security/service/sdkhelper/SDKHelper$1;->this$0:Lcom/lbe/security/service/sdkhelper/SDKHelper;

    #getter for: Lcom/lbe/security/service/sdkhelper/SDKHelper;->allPermList:Landroid/util/SparseArray;
    invoke-static {v1}, Lcom/lbe/security/service/sdkhelper/SDKHelper;->access$0(Lcom/lbe/security/service/sdkhelper/SDKHelper;)Landroid/util/SparseArray;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lbe/security/service/sdkhelper/SDKPermission;

    .line 44
    .local v0, perm:Lcom/lbe/security/service/sdkhelper/SDKPermission;
    if-eqz v0, :cond_0

    .line 45
    iput p2, v0, Lcom/lbe/security/service/sdkhelper/SDKPermission;->defaultAction:I

    .line 47
    :cond_0
    return-void
.end method
