.class final Landroid/app/ActivityThread$ProviderRefCount;
.super Ljava/lang/Object;
.source "ActivityThread.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/ActivityThread;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ProviderRefCount"
.end annotation


# instance fields
.field public final client:Landroid/app/ActivityThread$ProviderClientRecord;

.field public final holder:Landroid/app/IActivityManager$ContentProviderHolder;

.field public removePending:Z

.field public stableCount:I

.field public unstableCount:I


# direct methods
.method constructor <init>(Landroid/app/IActivityManager$ContentProviderHolder;Landroid/app/ActivityThread$ProviderClientRecord;II)V
    .locals 0
    .param p1, "inHolder"    # Landroid/app/IActivityManager$ContentProviderHolder;
    .param p2, "inClient"    # Landroid/app/ActivityThread$ProviderClientRecord;
    .param p3, "sCount"    # I
    .param p4, "uCount"    # I

    .prologue
    .line 3105
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3106
    iput-object p1, p0, Landroid/app/ActivityThread$ProviderRefCount;->holder:Landroid/app/IActivityManager$ContentProviderHolder;

    .line 3107
    iput-object p2, p0, Landroid/app/ActivityThread$ProviderRefCount;->client:Landroid/app/ActivityThread$ProviderClientRecord;

    .line 3108
    iput p3, p0, Landroid/app/ActivityThread$ProviderRefCount;->stableCount:I

    .line 3109
    iput p4, p0, Landroid/app/ActivityThread$ProviderRefCount;->unstableCount:I

    .line 3110
    return-void
.end method
