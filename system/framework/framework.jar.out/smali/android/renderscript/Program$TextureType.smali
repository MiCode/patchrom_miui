.class public final enum Landroid/renderscript/Program$TextureType;
.super Ljava/lang/Enum;
.source "Program.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/renderscript/Program;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "TextureType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Landroid/renderscript/Program$TextureType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Landroid/renderscript/Program$TextureType;

.field public static final enum TEXTURE_2D:Landroid/renderscript/Program$TextureType;

.field public static final enum TEXTURE_CUBE:Landroid/renderscript/Program$TextureType;


# instance fields
.field mID:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 48
    new-instance v0, Landroid/renderscript/Program$TextureType;

    const-string v1, "TEXTURE_2D"

    invoke-direct {v0, v1, v2, v2}, Landroid/renderscript/Program$TextureType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Landroid/renderscript/Program$TextureType;->TEXTURE_2D:Landroid/renderscript/Program$TextureType;

    .line 49
    new-instance v0, Landroid/renderscript/Program$TextureType;

    const-string v1, "TEXTURE_CUBE"

    invoke-direct {v0, v1, v3, v3}, Landroid/renderscript/Program$TextureType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Landroid/renderscript/Program$TextureType;->TEXTURE_CUBE:Landroid/renderscript/Program$TextureType;

    .line 47
    const/4 v0, 0x2

    new-array v0, v0, [Landroid/renderscript/Program$TextureType;

    sget-object v1, Landroid/renderscript/Program$TextureType;->TEXTURE_2D:Landroid/renderscript/Program$TextureType;

    aput-object v1, v0, v2

    sget-object v1, Landroid/renderscript/Program$TextureType;->TEXTURE_CUBE:Landroid/renderscript/Program$TextureType;

    aput-object v1, v0, v3

    sput-object v0, Landroid/renderscript/Program$TextureType;->$VALUES:[Landroid/renderscript/Program$TextureType;

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
    .line 52
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 53
    iput p3, p0, Landroid/renderscript/Program$TextureType;->mID:I

    .line 54
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Landroid/renderscript/Program$TextureType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 47
    const-class v0, Landroid/renderscript/Program$TextureType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Landroid/renderscript/Program$TextureType;

    return-object v0
.end method

.method public static values()[Landroid/renderscript/Program$TextureType;
    .locals 1

    .prologue
    .line 47
    sget-object v0, Landroid/renderscript/Program$TextureType;->$VALUES:[Landroid/renderscript/Program$TextureType;

    invoke-virtual {v0}, [Landroid/renderscript/Program$TextureType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/renderscript/Program$TextureType;

    return-object v0
.end method
