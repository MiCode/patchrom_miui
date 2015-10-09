.class public final enum Landroid/graphics/Region$Op;
.super Ljava/lang/Enum;
.source "Region.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/graphics/Region;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Op"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Landroid/graphics/Region$Op;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Landroid/graphics/Region$Op;

.field public static final enum DIFFERENCE:Landroid/graphics/Region$Op;

.field public static final enum INTERSECT:Landroid/graphics/Region$Op;

.field public static final enum REPLACE:Landroid/graphics/Region$Op;

.field public static final enum REVERSE_DIFFERENCE:Landroid/graphics/Region$Op;

.field public static final enum UNION:Landroid/graphics/Region$Op;

.field public static final enum XOR:Landroid/graphics/Region$Op;


# instance fields
.field public final nativeInt:I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 37
    new-instance v0, Landroid/graphics/Region$Op;

    const-string v1, "DIFFERENCE"

    invoke-direct {v0, v1, v4, v4}, Landroid/graphics/Region$Op;-><init>(Ljava/lang/String;II)V

    sput-object v0, Landroid/graphics/Region$Op;->DIFFERENCE:Landroid/graphics/Region$Op;

    .line 38
    new-instance v0, Landroid/graphics/Region$Op;

    const-string v1, "INTERSECT"

    invoke-direct {v0, v1, v5, v5}, Landroid/graphics/Region$Op;-><init>(Ljava/lang/String;II)V

    sput-object v0, Landroid/graphics/Region$Op;->INTERSECT:Landroid/graphics/Region$Op;

    .line 39
    new-instance v0, Landroid/graphics/Region$Op;

    const-string v1, "UNION"

    invoke-direct {v0, v1, v6, v6}, Landroid/graphics/Region$Op;-><init>(Ljava/lang/String;II)V

    sput-object v0, Landroid/graphics/Region$Op;->UNION:Landroid/graphics/Region$Op;

    .line 40
    new-instance v0, Landroid/graphics/Region$Op;

    const-string v1, "XOR"

    invoke-direct {v0, v1, v7, v7}, Landroid/graphics/Region$Op;-><init>(Ljava/lang/String;II)V

    sput-object v0, Landroid/graphics/Region$Op;->XOR:Landroid/graphics/Region$Op;

    .line 41
    new-instance v0, Landroid/graphics/Region$Op;

    const-string v1, "REVERSE_DIFFERENCE"

    invoke-direct {v0, v1, v8, v8}, Landroid/graphics/Region$Op;-><init>(Ljava/lang/String;II)V

    sput-object v0, Landroid/graphics/Region$Op;->REVERSE_DIFFERENCE:Landroid/graphics/Region$Op;

    .line 42
    new-instance v0, Landroid/graphics/Region$Op;

    const-string v1, "REPLACE"

    const/4 v2, 0x5

    const/4 v3, 0x5

    invoke-direct {v0, v1, v2, v3}, Landroid/graphics/Region$Op;-><init>(Ljava/lang/String;II)V

    sput-object v0, Landroid/graphics/Region$Op;->REPLACE:Landroid/graphics/Region$Op;

    .line 36
    const/4 v0, 0x6

    new-array v0, v0, [Landroid/graphics/Region$Op;

    sget-object v1, Landroid/graphics/Region$Op;->DIFFERENCE:Landroid/graphics/Region$Op;

    aput-object v1, v0, v4

    sget-object v1, Landroid/graphics/Region$Op;->INTERSECT:Landroid/graphics/Region$Op;

    aput-object v1, v0, v5

    sget-object v1, Landroid/graphics/Region$Op;->UNION:Landroid/graphics/Region$Op;

    aput-object v1, v0, v6

    sget-object v1, Landroid/graphics/Region$Op;->XOR:Landroid/graphics/Region$Op;

    aput-object v1, v0, v7

    sget-object v1, Landroid/graphics/Region$Op;->REVERSE_DIFFERENCE:Landroid/graphics/Region$Op;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, Landroid/graphics/Region$Op;->REPLACE:Landroid/graphics/Region$Op;

    aput-object v2, v0, v1

    sput-object v0, Landroid/graphics/Region$Op;->$VALUES:[Landroid/graphics/Region$Op;

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
    .line 44
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 45
    iput p3, p0, Landroid/graphics/Region$Op;->nativeInt:I

    .line 46
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Landroid/graphics/Region$Op;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 36
    const-class v0, Landroid/graphics/Region$Op;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Landroid/graphics/Region$Op;

    return-object v0
.end method

.method public static values()[Landroid/graphics/Region$Op;
    .locals 1

    .prologue
    .line 36
    sget-object v0, Landroid/graphics/Region$Op;->$VALUES:[Landroid/graphics/Region$Op;

    invoke-virtual {v0}, [Landroid/graphics/Region$Op;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/graphics/Region$Op;

    return-object v0
.end method
