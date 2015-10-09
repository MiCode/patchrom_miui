.class public final enum Landroid/graphics/Canvas$EdgeType;
.super Ljava/lang/Enum;
.source "Canvas.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/graphics/Canvas;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "EdgeType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Landroid/graphics/Canvas$EdgeType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Landroid/graphics/Canvas$EdgeType;

.field public static final enum AA:Landroid/graphics/Canvas$EdgeType;

.field public static final enum BW:Landroid/graphics/Canvas$EdgeType;


# instance fields
.field public final nativeInt:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 728
    new-instance v0, Landroid/graphics/Canvas$EdgeType;

    const-string v1, "BW"

    invoke-direct {v0, v1, v2, v2}, Landroid/graphics/Canvas$EdgeType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Landroid/graphics/Canvas$EdgeType;->BW:Landroid/graphics/Canvas$EdgeType;

    .line 733
    new-instance v0, Landroid/graphics/Canvas$EdgeType;

    const-string v1, "AA"

    invoke-direct {v0, v1, v3, v3}, Landroid/graphics/Canvas$EdgeType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Landroid/graphics/Canvas$EdgeType;->AA:Landroid/graphics/Canvas$EdgeType;

    .line 723
    const/4 v0, 0x2

    new-array v0, v0, [Landroid/graphics/Canvas$EdgeType;

    sget-object v1, Landroid/graphics/Canvas$EdgeType;->BW:Landroid/graphics/Canvas$EdgeType;

    aput-object v1, v0, v2

    sget-object v1, Landroid/graphics/Canvas$EdgeType;->AA:Landroid/graphics/Canvas$EdgeType;

    aput-object v1, v0, v3

    sput-object v0, Landroid/graphics/Canvas$EdgeType;->$VALUES:[Landroid/graphics/Canvas$EdgeType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .param p3, "nativeInt"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .prologue
    .line 735
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 736
    iput p3, p0, Landroid/graphics/Canvas$EdgeType;->nativeInt:I

    .line 737
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Landroid/graphics/Canvas$EdgeType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 723
    const-class v0, Landroid/graphics/Canvas$EdgeType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Landroid/graphics/Canvas$EdgeType;

    return-object v0
.end method

.method public static values()[Landroid/graphics/Canvas$EdgeType;
    .locals 1

    .prologue
    .line 723
    sget-object v0, Landroid/graphics/Canvas$EdgeType;->$VALUES:[Landroid/graphics/Canvas$EdgeType;

    invoke-virtual {v0}, [Landroid/graphics/Canvas$EdgeType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/graphics/Canvas$EdgeType;

    return-object v0
.end method
