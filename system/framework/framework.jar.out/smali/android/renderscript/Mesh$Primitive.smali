.class public final enum Landroid/renderscript/Mesh$Primitive;
.super Ljava/lang/Enum;
.source "Mesh.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/renderscript/Mesh;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Primitive"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Landroid/renderscript/Mesh$Primitive;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Landroid/renderscript/Mesh$Primitive;

.field public static final enum LINE:Landroid/renderscript/Mesh$Primitive;

.field public static final enum LINE_STRIP:Landroid/renderscript/Mesh$Primitive;

.field public static final enum POINT:Landroid/renderscript/Mesh$Primitive;

.field public static final enum TRIANGLE:Landroid/renderscript/Mesh$Primitive;

.field public static final enum TRIANGLE_FAN:Landroid/renderscript/Mesh$Primitive;

.field public static final enum TRIANGLE_STRIP:Landroid/renderscript/Mesh$Primitive;


# instance fields
.field mID:I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 54
    new-instance v0, Landroid/renderscript/Mesh$Primitive;

    const-string v1, "POINT"

    invoke-direct {v0, v1, v4, v4}, Landroid/renderscript/Mesh$Primitive;-><init>(Ljava/lang/String;II)V

    sput-object v0, Landroid/renderscript/Mesh$Primitive;->POINT:Landroid/renderscript/Mesh$Primitive;

    .line 59
    new-instance v0, Landroid/renderscript/Mesh$Primitive;

    const-string v1, "LINE"

    invoke-direct {v0, v1, v5, v5}, Landroid/renderscript/Mesh$Primitive;-><init>(Ljava/lang/String;II)V

    sput-object v0, Landroid/renderscript/Mesh$Primitive;->LINE:Landroid/renderscript/Mesh$Primitive;

    .line 64
    new-instance v0, Landroid/renderscript/Mesh$Primitive;

    const-string v1, "LINE_STRIP"

    invoke-direct {v0, v1, v6, v6}, Landroid/renderscript/Mesh$Primitive;-><init>(Ljava/lang/String;II)V

    sput-object v0, Landroid/renderscript/Mesh$Primitive;->LINE_STRIP:Landroid/renderscript/Mesh$Primitive;

    .line 69
    new-instance v0, Landroid/renderscript/Mesh$Primitive;

    const-string v1, "TRIANGLE"

    invoke-direct {v0, v1, v7, v7}, Landroid/renderscript/Mesh$Primitive;-><init>(Ljava/lang/String;II)V

    sput-object v0, Landroid/renderscript/Mesh$Primitive;->TRIANGLE:Landroid/renderscript/Mesh$Primitive;

    .line 76
    new-instance v0, Landroid/renderscript/Mesh$Primitive;

    const-string v1, "TRIANGLE_STRIP"

    invoke-direct {v0, v1, v8, v8}, Landroid/renderscript/Mesh$Primitive;-><init>(Ljava/lang/String;II)V

    sput-object v0, Landroid/renderscript/Mesh$Primitive;->TRIANGLE_STRIP:Landroid/renderscript/Mesh$Primitive;

    .line 82
    new-instance v0, Landroid/renderscript/Mesh$Primitive;

    const-string v1, "TRIANGLE_FAN"

    const/4 v2, 0x5

    const/4 v3, 0x5

    invoke-direct {v0, v1, v2, v3}, Landroid/renderscript/Mesh$Primitive;-><init>(Ljava/lang/String;II)V

    sput-object v0, Landroid/renderscript/Mesh$Primitive;->TRIANGLE_FAN:Landroid/renderscript/Mesh$Primitive;

    .line 49
    const/4 v0, 0x6

    new-array v0, v0, [Landroid/renderscript/Mesh$Primitive;

    sget-object v1, Landroid/renderscript/Mesh$Primitive;->POINT:Landroid/renderscript/Mesh$Primitive;

    aput-object v1, v0, v4

    sget-object v1, Landroid/renderscript/Mesh$Primitive;->LINE:Landroid/renderscript/Mesh$Primitive;

    aput-object v1, v0, v5

    sget-object v1, Landroid/renderscript/Mesh$Primitive;->LINE_STRIP:Landroid/renderscript/Mesh$Primitive;

    aput-object v1, v0, v6

    sget-object v1, Landroid/renderscript/Mesh$Primitive;->TRIANGLE:Landroid/renderscript/Mesh$Primitive;

    aput-object v1, v0, v7

    sget-object v1, Landroid/renderscript/Mesh$Primitive;->TRIANGLE_STRIP:Landroid/renderscript/Mesh$Primitive;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, Landroid/renderscript/Mesh$Primitive;->TRIANGLE_FAN:Landroid/renderscript/Mesh$Primitive;

    aput-object v2, v0, v1

    sput-object v0, Landroid/renderscript/Mesh$Primitive;->$VALUES:[Landroid/renderscript/Mesh$Primitive;

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
    .line 85
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 86
    iput p3, p0, Landroid/renderscript/Mesh$Primitive;->mID:I

    .line 87
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Landroid/renderscript/Mesh$Primitive;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 49
    const-class v0, Landroid/renderscript/Mesh$Primitive;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Landroid/renderscript/Mesh$Primitive;

    return-object v0
.end method

.method public static values()[Landroid/renderscript/Mesh$Primitive;
    .locals 1

    .prologue
    .line 49
    sget-object v0, Landroid/renderscript/Mesh$Primitive;->$VALUES:[Landroid/renderscript/Mesh$Primitive;

    invoke-virtual {v0}, [Landroid/renderscript/Mesh$Primitive;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/renderscript/Mesh$Primitive;

    return-object v0
.end method
