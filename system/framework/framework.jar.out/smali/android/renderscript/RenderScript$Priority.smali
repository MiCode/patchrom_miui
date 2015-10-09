.class public final enum Landroid/renderscript/RenderScript$Priority;
.super Ljava/lang/Enum;
.source "RenderScript.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/renderscript/RenderScript;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Priority"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Landroid/renderscript/RenderScript$Priority;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Landroid/renderscript/RenderScript$Priority;

.field public static final enum LOW:Landroid/renderscript/RenderScript$Priority;

.field public static final enum NORMAL:Landroid/renderscript/RenderScript$Priority;


# instance fields
.field mID:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1037
    new-instance v0, Landroid/renderscript/RenderScript$Priority;

    const-string v1, "LOW"

    const/16 v2, 0xf

    invoke-direct {v0, v1, v3, v2}, Landroid/renderscript/RenderScript$Priority;-><init>(Ljava/lang/String;II)V

    sput-object v0, Landroid/renderscript/RenderScript$Priority;->LOW:Landroid/renderscript/RenderScript$Priority;

    .line 1038
    new-instance v0, Landroid/renderscript/RenderScript$Priority;

    const-string v1, "NORMAL"

    const/4 v2, -0x4

    invoke-direct {v0, v1, v4, v2}, Landroid/renderscript/RenderScript$Priority;-><init>(Ljava/lang/String;II)V

    sput-object v0, Landroid/renderscript/RenderScript$Priority;->NORMAL:Landroid/renderscript/RenderScript$Priority;

    .line 1036
    const/4 v0, 0x2

    new-array v0, v0, [Landroid/renderscript/RenderScript$Priority;

    sget-object v1, Landroid/renderscript/RenderScript$Priority;->LOW:Landroid/renderscript/RenderScript$Priority;

    aput-object v1, v0, v3

    sget-object v1, Landroid/renderscript/RenderScript$Priority;->NORMAL:Landroid/renderscript/RenderScript$Priority;

    aput-object v1, v0, v4

    sput-object v0, Landroid/renderscript/RenderScript$Priority;->$VALUES:[Landroid/renderscript/RenderScript$Priority;

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
    .line 1041
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 1042
    iput p3, p0, Landroid/renderscript/RenderScript$Priority;->mID:I

    .line 1043
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Landroid/renderscript/RenderScript$Priority;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 1036
    const-class v0, Landroid/renderscript/RenderScript$Priority;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Landroid/renderscript/RenderScript$Priority;

    return-object v0
.end method

.method public static values()[Landroid/renderscript/RenderScript$Priority;
    .locals 1

    .prologue
    .line 1036
    sget-object v0, Landroid/renderscript/RenderScript$Priority;->$VALUES:[Landroid/renderscript/RenderScript$Priority;

    invoke-virtual {v0}, [Landroid/renderscript/RenderScript$Priority;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/renderscript/RenderScript$Priority;

    return-object v0
.end method
