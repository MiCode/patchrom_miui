.class final Landroid/content/ContentResolver$1;
.super Landroid/content/ISyncStatusObserver$Stub;
.source "ContentResolver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/content/ContentResolver;->addStatusChangeListener(ILandroid/content/SyncStatusObserver;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$callback:Landroid/content/SyncStatusObserver;


# direct methods
.method constructor <init>(Landroid/content/SyncStatusObserver;)V
    .locals 0

    .prologue
    .line 2142
    iput-object p1, p0, Landroid/content/ContentResolver$1;->val$callback:Landroid/content/SyncStatusObserver;

    invoke-direct {p0}, Landroid/content/ISyncStatusObserver$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onStatusChanged(I)V
    .locals 1
    .param p1, "which"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2144
    iget-object v0, p0, Landroid/content/ContentResolver$1;->val$callback:Landroid/content/SyncStatusObserver;

    invoke-interface {v0, p1}, Landroid/content/SyncStatusObserver;->onStatusChanged(I)V

    .line 2145
    return-void
.end method
