.class public final Landroid/os/StrictMode$ThreadPolicy;
.super Ljava/lang/Object;
.source "StrictMode.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/StrictMode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ThreadPolicy"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/StrictMode$ThreadPolicy$Builder;
    }
.end annotation


# static fields
.field public static final LAX:Landroid/os/StrictMode$ThreadPolicy;


# instance fields
.field final mask:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 319
    new-instance v0, Landroid/os/StrictMode$ThreadPolicy;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/os/StrictMode$ThreadPolicy;-><init>(I)V

    sput-object v0, Landroid/os/StrictMode$ThreadPolicy;->LAX:Landroid/os/StrictMode$ThreadPolicy;

    return-void
.end method

.method private constructor <init>(I)V
    .locals 0
    .param p1, "mask"    # I

    .prologue
    .line 323
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 324
    iput p1, p0, Landroid/os/StrictMode$ThreadPolicy;->mask:I

    .line 325
    return-void
.end method

.method synthetic constructor <init>(ILandroid/os/StrictMode$1;)V
    .locals 0
    .param p1, "x0"    # I
    .param p2, "x1"    # Landroid/os/StrictMode$1;

    .prologue
    .line 315
    invoke-direct {p0, p1}, Landroid/os/StrictMode$ThreadPolicy;-><init>(I)V

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 329
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[StrictMode.ThreadPolicy; mask="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/os/StrictMode$ThreadPolicy;->mask:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
