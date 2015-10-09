.class final Landroid/app/ContextImplInjector$1;
.super Landroid/app/ContextImpl$ServiceFetcher;
.source "ContextImplInjector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/app/ContextImplInjector;->registerMiuiServices()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Landroid/app/ContextImpl$ServiceFetcher;-><init>()V

    return-void
.end method


# virtual methods
.method public getService(Landroid/app/ContextImpl;)Ljava/lang/Object;
    .locals 3
    .param p1, "ctx"    # Landroid/app/ContextImpl;

    .prologue
    .line 24
    const-string/jumbo v2, "security"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 25
    .local v0, "b":Landroid/os/IBinder;
    invoke-static {v0}, Lmiui/security/ISecurityManager$Stub;->asInterface(Landroid/os/IBinder;)Lmiui/security/ISecurityManager;

    move-result-object v1

    .line 26
    .local v1, "service":Lmiui/security/ISecurityManager;
    new-instance v2, Lmiui/security/SecurityManager;

    invoke-direct {v2, v1}, Lmiui/security/SecurityManager;-><init>(Lmiui/security/ISecurityManager;)V

    return-object v2
.end method
