.class public final Landroid/os/StrictMode$VmPolicy$Builder;
.super Ljava/lang/Object;
.source "StrictMode.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/StrictMode$VmPolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private mClassInstanceLimit:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Class;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mClassInstanceLimitNeedCow:Z

.field private mMask:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 585
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 583
    iput-boolean v0, p0, Landroid/os/StrictMode$VmPolicy$Builder;->mClassInstanceLimitNeedCow:Z

    .line 586
    iput v0, p0, Landroid/os/StrictMode$VmPolicy$Builder;->mMask:I

    .line 587
    return-void
.end method

.method public constructor <init>(Landroid/os/StrictMode$VmPolicy;)V
    .locals 1
    .param p1, "base"    # Landroid/os/StrictMode$VmPolicy;

    .prologue
    .line 592
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 583
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/os/StrictMode$VmPolicy$Builder;->mClassInstanceLimitNeedCow:Z

    .line 593
    iget v0, p1, Landroid/os/StrictMode$VmPolicy;->mask:I

    iput v0, p0, Landroid/os/StrictMode$VmPolicy$Builder;->mMask:I

    .line 594
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/os/StrictMode$VmPolicy$Builder;->mClassInstanceLimitNeedCow:Z

    .line 595
    iget-object v0, p1, Landroid/os/StrictMode$VmPolicy;->classInstanceLimit:Ljava/util/HashMap;

    iput-object v0, p0, Landroid/os/StrictMode$VmPolicy$Builder;->mClassInstanceLimit:Ljava/util/HashMap;

    .line 596
    return-void
.end method

.method private enable(I)Landroid/os/StrictMode$VmPolicy$Builder;
    .locals 1
    .param p1, "bit"    # I

    .prologue
    .line 713
    iget v0, p0, Landroid/os/StrictMode$VmPolicy$Builder;->mMask:I

    or-int/2addr v0, p1

    iput v0, p0, Landroid/os/StrictMode$VmPolicy$Builder;->mMask:I

    .line 714
    return-object p0
.end method


# virtual methods
.method public build()Landroid/os/StrictMode$VmPolicy;
    .locals 4

    .prologue
    .line 727
    iget v0, p0, Landroid/os/StrictMode$VmPolicy$Builder;->mMask:I

    if-eqz v0, :cond_0

    iget v0, p0, Landroid/os/StrictMode$VmPolicy$Builder;->mMask:I

    and-int/lit16 v0, v0, 0xf0

    if-nez v0, :cond_0

    .line 730
    invoke-virtual {p0}, Landroid/os/StrictMode$VmPolicy$Builder;->penaltyLog()Landroid/os/StrictMode$VmPolicy$Builder;

    .line 732
    :cond_0
    new-instance v1, Landroid/os/StrictMode$VmPolicy;

    iget v2, p0, Landroid/os/StrictMode$VmPolicy$Builder;->mMask:I

    iget-object v0, p0, Landroid/os/StrictMode$VmPolicy$Builder;->mClassInstanceLimit:Ljava/util/HashMap;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/os/StrictMode$VmPolicy$Builder;->mClassInstanceLimit:Ljava/util/HashMap;

    :goto_0
    const/4 v3, 0x0

    invoke-direct {v1, v2, v0, v3}, Landroid/os/StrictMode$VmPolicy;-><init>(ILjava/util/HashMap;Landroid/os/StrictMode$1;)V

    return-object v1

    :cond_1
    # getter for: Landroid/os/StrictMode;->EMPTY_CLASS_LIMIT_MAP:Ljava/util/HashMap;
    invoke-static {}, Landroid/os/StrictMode;->access$100()Ljava/util/HashMap;

    move-result-object v0

    goto :goto_0
.end method

.method public detectActivityLeaks()Landroid/os/StrictMode$VmPolicy$Builder;
    .locals 1

    .prologue
    .line 626
    const/16 v0, 0x800

    invoke-direct {p0, v0}, Landroid/os/StrictMode$VmPolicy$Builder;->enable(I)Landroid/os/StrictMode$VmPolicy$Builder;

    move-result-object v0

    return-object v0
.end method

.method public detectAll()Landroid/os/StrictMode$VmPolicy$Builder;
    .locals 1

    .prologue
    .line 637
    const/16 v0, 0x6e00

    invoke-direct {p0, v0}, Landroid/os/StrictMode$VmPolicy$Builder;->enable(I)Landroid/os/StrictMode$VmPolicy$Builder;

    move-result-object v0

    return-object v0
.end method

.method public detectFileUriExposure()Landroid/os/StrictMode$VmPolicy$Builder;
    .locals 1

    .prologue
    .line 683
    const/16 v0, 0x4000

    invoke-direct {p0, v0}, Landroid/os/StrictMode$VmPolicy$Builder;->enable(I)Landroid/os/StrictMode$VmPolicy$Builder;

    move-result-object v0

    return-object v0
.end method

.method public detectLeakedClosableObjects()Landroid/os/StrictMode$VmPolicy$Builder;
    .locals 1

    .prologue
    .line 664
    const/16 v0, 0x400

    invoke-direct {p0, v0}, Landroid/os/StrictMode$VmPolicy$Builder;->enable(I)Landroid/os/StrictMode$VmPolicy$Builder;

    move-result-object v0

    return-object v0
.end method

.method public detectLeakedRegistrationObjects()Landroid/os/StrictMode$VmPolicy$Builder;
    .locals 1

    .prologue
    .line 673
    const/16 v0, 0x2000

    invoke-direct {p0, v0}, Landroid/os/StrictMode$VmPolicy$Builder;->enable(I)Landroid/os/StrictMode$VmPolicy$Builder;

    move-result-object v0

    return-object v0
.end method

.method public detectLeakedSqlLiteObjects()Landroid/os/StrictMode$VmPolicy$Builder;
    .locals 1

    .prologue
    .line 652
    const/16 v0, 0x200

    invoke-direct {p0, v0}, Landroid/os/StrictMode$VmPolicy$Builder;->enable(I)Landroid/os/StrictMode$VmPolicy$Builder;

    move-result-object v0

    return-object v0
.end method

.method public penaltyDeath()Landroid/os/StrictMode$VmPolicy$Builder;
    .locals 1

    .prologue
    .line 692
    const/16 v0, 0x40

    invoke-direct {p0, v0}, Landroid/os/StrictMode$VmPolicy$Builder;->enable(I)Landroid/os/StrictMode$VmPolicy$Builder;

    move-result-object v0

    return-object v0
.end method

.method public penaltyDropBox()Landroid/os/StrictMode$VmPolicy$Builder;
    .locals 1

    .prologue
    .line 709
    const/16 v0, 0x80

    invoke-direct {p0, v0}, Landroid/os/StrictMode$VmPolicy$Builder;->enable(I)Landroid/os/StrictMode$VmPolicy$Builder;

    move-result-object v0

    return-object v0
.end method

.method public penaltyLog()Landroid/os/StrictMode$VmPolicy$Builder;
    .locals 1

    .prologue
    .line 699
    const/16 v0, 0x10

    invoke-direct {p0, v0}, Landroid/os/StrictMode$VmPolicy$Builder;->enable(I)Landroid/os/StrictMode$VmPolicy$Builder;

    move-result-object v0

    return-object v0
.end method

.method public setClassInstanceLimit(Ljava/lang/Class;I)Landroid/os/StrictMode$VmPolicy$Builder;
    .locals 2
    .param p1, "klass"    # Ljava/lang/Class;
    .param p2, "instanceLimit"    # I

    .prologue
    .line 603
    if-nez p1, :cond_0

    .line 604
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "klass == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 606
    :cond_0
    iget-boolean v0, p0, Landroid/os/StrictMode$VmPolicy$Builder;->mClassInstanceLimitNeedCow:Z

    if-eqz v0, :cond_3

    .line 607
    iget-object v0, p0, Landroid/os/StrictMode$VmPolicy$Builder;->mClassInstanceLimit:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/os/StrictMode$VmPolicy$Builder;->mClassInstanceLimit:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, p2, :cond_1

    .line 619
    :goto_0
    return-object p0

    .line 612
    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/os/StrictMode$VmPolicy$Builder;->mClassInstanceLimitNeedCow:Z

    .line 613
    iget-object v0, p0, Landroid/os/StrictMode$VmPolicy$Builder;->mClassInstanceLimit:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    iput-object v0, p0, Landroid/os/StrictMode$VmPolicy$Builder;->mClassInstanceLimit:Ljava/util/HashMap;

    .line 617
    :cond_2
    :goto_1
    iget v0, p0, Landroid/os/StrictMode$VmPolicy$Builder;->mMask:I

    or-int/lit16 v0, v0, 0x1000

    iput v0, p0, Landroid/os/StrictMode$VmPolicy$Builder;->mMask:I

    .line 618
    iget-object v0, p0, Landroid/os/StrictMode$VmPolicy$Builder;->mClassInstanceLimit:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 614
    :cond_3
    iget-object v0, p0, Landroid/os/StrictMode$VmPolicy$Builder;->mClassInstanceLimit:Ljava/util/HashMap;

    if-nez v0, :cond_2

    .line 615
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/os/StrictMode$VmPolicy$Builder;->mClassInstanceLimit:Ljava/util/HashMap;

    goto :goto_1
.end method
