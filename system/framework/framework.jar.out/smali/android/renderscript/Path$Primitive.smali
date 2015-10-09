.class public final enum Landroid/renderscript/Path$Primitive;
.super Ljava/lang/Enum;
.source "Path.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/renderscript/Path;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Primitive"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Landroid/renderscript/Path$Primitive;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Landroid/renderscript/Path$Primitive;

.field public static final enum CUBIC_BEZIER:Landroid/renderscript/Path$Primitive;

.field public static final enum QUADRATIC_BEZIER:Landroid/renderscript/Path$Primitive;


# instance fields
.field mID:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 29
    new-instance v0, Landroid/renderscript/Path$Primitive;

    const-string v1, "QUADRATIC_BEZIER"

    invoke-direct {v0, v1, v2, v2}, Landroid/renderscript/Path$Primitive;-><init>(Ljava/lang/String;II)V

    sput-object v0, Landroid/renderscript/Path$Primitive;->QUADRATIC_BEZIER:Landroid/renderscript/Path$Primitive;

    .line 30
    new-instance v0, Landroid/renderscript/Path$Primitive;

    const-string v1, "CUBIC_BEZIER"

    invoke-direct {v0, v1, v3, v3}, Landroid/renderscript/Path$Primitive;-><init>(Ljava/lang/String;II)V

    sput-object v0, Landroid/renderscript/Path$Primitive;->CUBIC_BEZIER:Landroid/renderscript/Path$Primitive;

    .line 28
    const/4 v0, 0x2

    new-array v0, v0, [Landroid/renderscript/Path$Primitive;

    sget-object v1, Landroid/renderscript/Path$Primitive;->QUADRATIC_BEZIER:Landroid/renderscript/Path$Primitive;

    aput-object v1, v0, v2

    sget-object v1, Landroid/renderscript/Path$Primitive;->CUBIC_BEZIER:Landroid/renderscript/Path$Primitive;

    aput-object v1, v0, v3

    sput-object v0, Landroid/renderscript/Path$Primitive;->$VALUES:[Landroid/renderscript/Path$Primitive;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .param p3, "id"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .prologue
    .line 33
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 34
    iput p3, p0, Landroid/renderscript/Path$Primitive;->mID:I

    .line 35
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Landroid/renderscript/Path$Primitive;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 28
    const-class v0, Landroid/renderscript/Path$Primitive;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Landroid/renderscript/Path$Primitive;

    return-object v0
.end method

.method public static values()[Landroid/renderscript/Path$Primitive;
    .locals 1

    .prologue
    .line 28
    sget-object v0, Landroid/renderscript/Path$Primitive;->$VALUES:[Landroid/renderscript/Path$Primitive;

    invoke-virtual {v0}, [Landroid/renderscript/Path$Primitive;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/renderscript/Path$Primitive;

    return-object v0
.end method
