.class public final Landroid/R$array;
.super Ljava/lang/Object;
.source "R.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/R;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "array"
.end annotation


# static fields
.field public static emailAddressTypes:I

.field public static imProtocols:I

.field public static organizationTypes:I

.field public static phoneTypes:I

.field public static postalAddressTypes:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 41
    const/high16 v0, 0x1070000

    sput v0, Landroid/R$array;->emailAddressTypes:I

    .line 44
    const v0, 0x1070001

    sput v0, Landroid/R$array;->imProtocols:I

    .line 47
    const v0, 0x1070002

    sput v0, Landroid/R$array;->organizationTypes:I

    .line 50
    const v0, 0x1070003

    sput v0, Landroid/R$array;->phoneTypes:I

    .line 53
    const v0, 0x1070004

    sput v0, Landroid/R$array;->postalAddressTypes:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
