.class public final enum Landroid/renderscript/ProgramRaster$CullMode;
.super Ljava/lang/Enum;
.source "ProgramRaster.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/renderscript/ProgramRaster;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "CullMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Landroid/renderscript/ProgramRaster$CullMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Landroid/renderscript/ProgramRaster$CullMode;

.field public static final enum BACK:Landroid/renderscript/ProgramRaster$CullMode;

.field public static final enum FRONT:Landroid/renderscript/ProgramRaster$CullMode;

.field public static final enum NONE:Landroid/renderscript/ProgramRaster$CullMode;


# instance fields
.field mID:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 38
    new-instance v0, Landroid/renderscript/ProgramRaster$CullMode;

    const-string v1, "BACK"

    invoke-direct {v0, v1, v2, v2}, Landroid/renderscript/ProgramRaster$CullMode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Landroid/renderscript/ProgramRaster$CullMode;->BACK:Landroid/renderscript/ProgramRaster$CullMode;

    .line 42
    new-instance v0, Landroid/renderscript/ProgramRaster$CullMode;

    const-string v1, "FRONT"

    invoke-direct {v0, v1, v3, v3}, Landroid/renderscript/ProgramRaster$CullMode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Landroid/renderscript/ProgramRaster$CullMode;->FRONT:Landroid/renderscript/ProgramRaster$CullMode;

    .line 46
    new-instance v0, Landroid/renderscript/ProgramRaster$CullMode;

    const-string v1, "NONE"

    invoke-direct {v0, v1, v4, v4}, Landroid/renderscript/ProgramRaster$CullMode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Landroid/renderscript/ProgramRaster$CullMode;->NONE:Landroid/renderscript/ProgramRaster$CullMode;

    .line 34
    const/4 v0, 0x3

    new-array v0, v0, [Landroid/renderscript/ProgramRaster$CullMode;

    sget-object v1, Landroid/renderscript/ProgramRaster$CullMode;->BACK:Landroid/renderscript/ProgramRaster$CullMode;

    aput-object v1, v0, v2

    sget-object v1, Landroid/renderscript/ProgramRaster$CullMode;->FRONT:Landroid/renderscript/ProgramRaster$CullMode;

    aput-object v1, v0, v3

    sget-object v1, Landroid/renderscript/ProgramRaster$CullMode;->NONE:Landroid/renderscript/ProgramRaster$CullMode;

    aput-object v1, v0, v4

    sput-object v0, Landroid/renderscript/ProgramRaster$CullMode;->$VALUES:[Landroid/renderscript/ProgramRaster$CullMode;

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
    .line 49
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 50
    iput p3, p0, Landroid/renderscript/ProgramRaster$CullMode;->mID:I

    .line 51
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Landroid/renderscript/ProgramRaster$CullMode;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 34
    const-class v0, Landroid/renderscript/ProgramRaster$CullMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Landroid/renderscript/ProgramRaster$CullMode;

    return-object v0
.end method

.method public static values()[Landroid/renderscript/ProgramRaster$CullMode;
    .locals 1

    .prologue
    .line 34
    sget-object v0, Landroid/renderscript/ProgramRaster$CullMode;->$VALUES:[Landroid/renderscript/ProgramRaster$CullMode;

    invoke-virtual {v0}, [Landroid/renderscript/ProgramRaster$CullMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/renderscript/ProgramRaster$CullMode;

    return-object v0
.end method
