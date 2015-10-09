.class public final Landroid/R$anim;
.super Ljava/lang/Object;
.source "R.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/R;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "anim"
.end annotation


# static fields
.field public static accelerate_decelerate_interpolator:I

.field public static accelerate_interpolator:I

.field public static anticipate_interpolator:I

.field public static anticipate_overshoot_interpolator:I

.field public static bounce_interpolator:I

.field public static cycle_interpolator:I

.field public static decelerate_interpolator:I

.field public static fade_in:I

.field public static fade_out:I

.field public static linear_interpolator:I

.field public static overshoot_interpolator:I

.field public static slide_in_left:I

.field public static slide_out_right:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 12
    const v0, 0x10a0004

    sput v0, Landroid/R$anim;->accelerate_decelerate_interpolator:I

    .line 15
    const v0, 0x10a0005

    sput v0, Landroid/R$anim;->accelerate_interpolator:I

    .line 16
    const v0, 0x10a0007

    sput v0, Landroid/R$anim;->anticipate_interpolator:I

    .line 17
    const v0, 0x10a0009

    sput v0, Landroid/R$anim;->anticipate_overshoot_interpolator:I

    .line 18
    const v0, 0x10a000a

    sput v0, Landroid/R$anim;->bounce_interpolator:I

    .line 19
    const v0, 0x10a000c

    sput v0, Landroid/R$anim;->cycle_interpolator:I

    .line 22
    const v0, 0x10a0006

    sput v0, Landroid/R$anim;->decelerate_interpolator:I

    .line 23
    const/high16 v0, 0x10a0000

    sput v0, Landroid/R$anim;->fade_in:I

    .line 24
    const v0, 0x10a0001

    sput v0, Landroid/R$anim;->fade_out:I

    .line 25
    const v0, 0x10a000b

    sput v0, Landroid/R$anim;->linear_interpolator:I

    .line 26
    const v0, 0x10a0008

    sput v0, Landroid/R$anim;->overshoot_interpolator:I

    .line 27
    const v0, 0x10a0002

    sput v0, Landroid/R$anim;->slide_in_left:I

    .line 28
    const v0, 0x10a0003

    sput v0, Landroid/R$anim;->slide_out_right:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
