.class final Landroid/graphics/drawable/NinePatchDrawable$NinePatchState;
.super Landroid/graphics/drawable/Drawable$ConstantState;
.source "NinePatchDrawable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/graphics/drawable/NinePatchDrawable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "NinePatchState"
.end annotation


# instance fields
.field mAutoMirrored:Z

.field mChangingConfigurations:I

.field final mDither:Z

.field final mNinePatch:Landroid/graphics/NinePatch;

.field final mOpticalInsets:Landroid/graphics/Insets;

.field final mPadding:Landroid/graphics/Rect;

.field mTargetDensity:I


# direct methods
.method constructor <init>(Landroid/graphics/NinePatch;Landroid/graphics/Rect;)V
    .locals 6
    .param p1, "ninePatch"    # Landroid/graphics/NinePatch;
    .param p2, "padding"    # Landroid/graphics/Rect;

    .prologue
    const/4 v4, 0x0

    .line 456
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v5, v4

    invoke-direct/range {v0 .. v5}, Landroid/graphics/drawable/NinePatchDrawable$NinePatchState;-><init>(Landroid/graphics/NinePatch;Landroid/graphics/Rect;Landroid/graphics/Rect;ZZ)V

    .line 457
    return-void
.end method

.method constructor <init>(Landroid/graphics/NinePatch;Landroid/graphics/Rect;Landroid/graphics/Rect;)V
    .locals 6
    .param p1, "ninePatch"    # Landroid/graphics/NinePatch;
    .param p2, "padding"    # Landroid/graphics/Rect;
    .param p3, "opticalInsets"    # Landroid/graphics/Rect;

    .prologue
    const/4 v4, 0x0

    .line 460
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v5, v4

    invoke-direct/range {v0 .. v5}, Landroid/graphics/drawable/NinePatchDrawable$NinePatchState;-><init>(Landroid/graphics/NinePatch;Landroid/graphics/Rect;Landroid/graphics/Rect;ZZ)V

    .line 461
    return-void
.end method

.method constructor <init>(Landroid/graphics/NinePatch;Landroid/graphics/Rect;Landroid/graphics/Rect;ZZ)V
    .locals 1
    .param p1, "ninePatch"    # Landroid/graphics/NinePatch;
    .param p2, "rect"    # Landroid/graphics/Rect;
    .param p3, "opticalInsets"    # Landroid/graphics/Rect;
    .param p4, "dither"    # Z
    .param p5, "autoMirror"    # Z

    .prologue
    .line 464
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable$ConstantState;-><init>()V

    .line 452
    const/16 v0, 0xa0

    iput v0, p0, Landroid/graphics/drawable/NinePatchDrawable$NinePatchState;->mTargetDensity:I

    .line 465
    iput-object p1, p0, Landroid/graphics/drawable/NinePatchDrawable$NinePatchState;->mNinePatch:Landroid/graphics/NinePatch;

    .line 466
    iput-object p2, p0, Landroid/graphics/drawable/NinePatchDrawable$NinePatchState;->mPadding:Landroid/graphics/Rect;

    .line 467
    invoke-static {p3}, Landroid/graphics/Insets;->of(Landroid/graphics/Rect;)Landroid/graphics/Insets;

    move-result-object v0

    iput-object v0, p0, Landroid/graphics/drawable/NinePatchDrawable$NinePatchState;->mOpticalInsets:Landroid/graphics/Insets;

    .line 468
    iput-boolean p4, p0, Landroid/graphics/drawable/NinePatchDrawable$NinePatchState;->mDither:Z

    .line 469
    iput-boolean p5, p0, Landroid/graphics/drawable/NinePatchDrawable$NinePatchState;->mAutoMirrored:Z

    .line 470
    return-void
.end method

.method constructor <init>(Landroid/graphics/drawable/NinePatchDrawable$NinePatchState;)V
    .locals 1
    .param p1, "state"    # Landroid/graphics/drawable/NinePatchDrawable$NinePatchState;

    .prologue
    .line 474
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable$ConstantState;-><init>()V

    .line 452
    const/16 v0, 0xa0

    iput v0, p0, Landroid/graphics/drawable/NinePatchDrawable$NinePatchState;->mTargetDensity:I

    .line 476
    iget-object v0, p1, Landroid/graphics/drawable/NinePatchDrawable$NinePatchState;->mNinePatch:Landroid/graphics/NinePatch;

    iput-object v0, p0, Landroid/graphics/drawable/NinePatchDrawable$NinePatchState;->mNinePatch:Landroid/graphics/NinePatch;

    .line 478
    iget-object v0, p1, Landroid/graphics/drawable/NinePatchDrawable$NinePatchState;->mPadding:Landroid/graphics/Rect;

    iput-object v0, p0, Landroid/graphics/drawable/NinePatchDrawable$NinePatchState;->mPadding:Landroid/graphics/Rect;

    .line 479
    iget-object v0, p1, Landroid/graphics/drawable/NinePatchDrawable$NinePatchState;->mOpticalInsets:Landroid/graphics/Insets;

    iput-object v0, p0, Landroid/graphics/drawable/NinePatchDrawable$NinePatchState;->mOpticalInsets:Landroid/graphics/Insets;

    .line 480
    iget-boolean v0, p1, Landroid/graphics/drawable/NinePatchDrawable$NinePatchState;->mDither:Z

    iput-boolean v0, p0, Landroid/graphics/drawable/NinePatchDrawable$NinePatchState;->mDither:Z

    .line 481
    iget v0, p1, Landroid/graphics/drawable/NinePatchDrawable$NinePatchState;->mChangingConfigurations:I

    iput v0, p0, Landroid/graphics/drawable/NinePatchDrawable$NinePatchState;->mChangingConfigurations:I

    .line 482
    iget v0, p1, Landroid/graphics/drawable/NinePatchDrawable$NinePatchState;->mTargetDensity:I

    iput v0, p0, Landroid/graphics/drawable/NinePatchDrawable$NinePatchState;->mTargetDensity:I

    .line 483
    iget-boolean v0, p1, Landroid/graphics/drawable/NinePatchDrawable$NinePatchState;->mAutoMirrored:Z

    iput-boolean v0, p0, Landroid/graphics/drawable/NinePatchDrawable$NinePatchState;->mAutoMirrored:Z

    .line 484
    return-void
.end method


# virtual methods
.method public getBitmap()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 488
    iget-object v0, p0, Landroid/graphics/drawable/NinePatchDrawable$NinePatchState;->mNinePatch:Landroid/graphics/NinePatch;

    invoke-virtual {v0}, Landroid/graphics/NinePatch;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public getChangingConfigurations()I
    .locals 1

    .prologue
    .line 503
    iget v0, p0, Landroid/graphics/drawable/NinePatchDrawable$NinePatchState;->mChangingConfigurations:I

    return v0
.end method

.method public newDrawable()Landroid/graphics/drawable/Drawable;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 493
    new-instance v0, Landroid/graphics/drawable/NinePatchDrawable;

    invoke-direct {v0, p0, v1, v1}, Landroid/graphics/drawable/NinePatchDrawable;-><init>(Landroid/graphics/drawable/NinePatchDrawable$NinePatchState;Landroid/content/res/Resources;Landroid/graphics/drawable/NinePatchDrawable$1;)V

    return-object v0
.end method

.method public newDrawable(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;
    .locals 2
    .param p1, "res"    # Landroid/content/res/Resources;

    .prologue
    .line 498
    new-instance v0, Landroid/graphics/drawable/NinePatchDrawable;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Landroid/graphics/drawable/NinePatchDrawable;-><init>(Landroid/graphics/drawable/NinePatchDrawable$NinePatchState;Landroid/content/res/Resources;Landroid/graphics/drawable/NinePatchDrawable$1;)V

    return-object v0
.end method
