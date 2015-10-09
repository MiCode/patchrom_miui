.class public Landroid/widget/GridLayout$Spec;
.super Ljava/lang/Object;
.source "GridLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/GridLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Spec"
.end annotation


# static fields
.field static final UNDEFINED:Landroid/widget/GridLayout$Spec;


# instance fields
.field final alignment:Landroid/widget/GridLayout$Alignment;

.field final span:Landroid/widget/GridLayout$Interval;

.field final startDefined:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 2398
    const/high16 v0, -0x80000000

    invoke-static {v0}, Landroid/widget/GridLayout;->spec(I)Landroid/widget/GridLayout$Spec;

    move-result-object v0

    sput-object v0, Landroid/widget/GridLayout$Spec;->UNDEFINED:Landroid/widget/GridLayout$Spec;

    return-void
.end method

.method private constructor <init>(ZIILandroid/widget/GridLayout$Alignment;)V
    .locals 2
    .param p1, "startDefined"    # Z
    .param p2, "start"    # I
    .param p3, "size"    # I
    .param p4, "alignment"    # Landroid/widget/GridLayout$Alignment;

    .prologue
    .line 2411
    new-instance v0, Landroid/widget/GridLayout$Interval;

    add-int v1, p2, p3

    invoke-direct {v0, p2, v1}, Landroid/widget/GridLayout$Interval;-><init>(II)V

    invoke-direct {p0, p1, v0, p4}, Landroid/widget/GridLayout$Spec;-><init>(ZLandroid/widget/GridLayout$Interval;Landroid/widget/GridLayout$Alignment;)V

    .line 2412
    return-void
.end method

.method synthetic constructor <init>(ZIILandroid/widget/GridLayout$Alignment;Landroid/widget/GridLayout$1;)V
    .locals 0
    .param p1, "x0"    # Z
    .param p2, "x1"    # I
    .param p3, "x2"    # I
    .param p4, "x3"    # Landroid/widget/GridLayout$Alignment;
    .param p5, "x4"    # Landroid/widget/GridLayout$1;

    .prologue
    .line 2397
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/GridLayout$Spec;-><init>(ZIILandroid/widget/GridLayout$Alignment;)V

    return-void
.end method

.method private constructor <init>(ZLandroid/widget/GridLayout$Interval;Landroid/widget/GridLayout$Alignment;)V
    .locals 0
    .param p1, "startDefined"    # Z
    .param p2, "span"    # Landroid/widget/GridLayout$Interval;
    .param p3, "alignment"    # Landroid/widget/GridLayout$Alignment;

    .prologue
    .line 2404
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2405
    iput-boolean p1, p0, Landroid/widget/GridLayout$Spec;->startDefined:Z

    .line 2406
    iput-object p2, p0, Landroid/widget/GridLayout$Spec;->span:Landroid/widget/GridLayout$Interval;

    .line 2407
    iput-object p3, p0, Landroid/widget/GridLayout$Spec;->alignment:Landroid/widget/GridLayout$Alignment;

    .line 2408
    return-void
.end method


# virtual methods
.method final copyWriteAlignment(Landroid/widget/GridLayout$Alignment;)Landroid/widget/GridLayout$Spec;
    .locals 3
    .param p1, "alignment"    # Landroid/widget/GridLayout$Alignment;

    .prologue
    .line 2419
    new-instance v0, Landroid/widget/GridLayout$Spec;

    iget-boolean v1, p0, Landroid/widget/GridLayout$Spec;->startDefined:Z

    iget-object v2, p0, Landroid/widget/GridLayout$Spec;->span:Landroid/widget/GridLayout$Interval;

    invoke-direct {v0, v1, v2, p1}, Landroid/widget/GridLayout$Spec;-><init>(ZLandroid/widget/GridLayout$Interval;Landroid/widget/GridLayout$Alignment;)V

    return-object v0
.end method

.method final copyWriteSpan(Landroid/widget/GridLayout$Interval;)Landroid/widget/GridLayout$Spec;
    .locals 3
    .param p1, "span"    # Landroid/widget/GridLayout$Interval;

    .prologue
    .line 2415
    new-instance v0, Landroid/widget/GridLayout$Spec;

    iget-boolean v1, p0, Landroid/widget/GridLayout$Spec;->startDefined:Z

    iget-object v2, p0, Landroid/widget/GridLayout$Spec;->alignment:Landroid/widget/GridLayout$Alignment;

    invoke-direct {v0, v1, p1, v2}, Landroid/widget/GridLayout$Spec;-><init>(ZLandroid/widget/GridLayout$Interval;Landroid/widget/GridLayout$Alignment;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "that"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 2438
    if-ne p0, p1, :cond_1

    .line 2455
    :cond_0
    :goto_0
    return v1

    .line 2441
    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-eq v3, v4, :cond_3

    :cond_2
    move v1, v2

    .line 2442
    goto :goto_0

    :cond_3
    move-object v0, p1

    .line 2445
    check-cast v0, Landroid/widget/GridLayout$Spec;

    .line 2447
    .local v0, "spec":Landroid/widget/GridLayout$Spec;
    iget-object v3, p0, Landroid/widget/GridLayout$Spec;->alignment:Landroid/widget/GridLayout$Alignment;

    iget-object v4, v0, Landroid/widget/GridLayout$Spec;->alignment:Landroid/widget/GridLayout$Alignment;

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    move v1, v2

    .line 2448
    goto :goto_0

    .line 2451
    :cond_4
    iget-object v3, p0, Landroid/widget/GridLayout$Spec;->span:Landroid/widget/GridLayout$Interval;

    iget-object v4, v0, Landroid/widget/GridLayout$Spec;->span:Landroid/widget/GridLayout$Interval;

    invoke-virtual {v3, v4}, Landroid/widget/GridLayout$Interval;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    move v1, v2

    .line 2452
    goto :goto_0
.end method

.method final getFlexibility()I
    .locals 2

    .prologue
    .line 2423
    iget-object v0, p0, Landroid/widget/GridLayout$Spec;->alignment:Landroid/widget/GridLayout$Alignment;

    sget-object v1, Landroid/widget/GridLayout;->UNDEFINED_ALIGNMENT:Landroid/widget/GridLayout$Alignment;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x2

    goto :goto_0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 2460
    iget-object v1, p0, Landroid/widget/GridLayout$Spec;->span:Landroid/widget/GridLayout$Interval;

    invoke-virtual {v1}, Landroid/widget/GridLayout$Interval;->hashCode()I

    move-result v0

    .line 2461
    .local v0, "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Landroid/widget/GridLayout$Spec;->alignment:Landroid/widget/GridLayout$Alignment;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    add-int v0, v1, v2

    .line 2462
    return v0
.end method
