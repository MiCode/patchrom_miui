.class public final enum Landroid/renderscript/ProgramStore$BlendSrcFunc;
.super Ljava/lang/Enum;
.source "ProgramStore.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/renderscript/ProgramStore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "BlendSrcFunc"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Landroid/renderscript/ProgramStore$BlendSrcFunc;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Landroid/renderscript/ProgramStore$BlendSrcFunc;

.field public static final enum DST_ALPHA:Landroid/renderscript/ProgramStore$BlendSrcFunc;

.field public static final enum DST_COLOR:Landroid/renderscript/ProgramStore$BlendSrcFunc;

.field public static final enum ONE:Landroid/renderscript/ProgramStore$BlendSrcFunc;

.field public static final enum ONE_MINUS_DST_ALPHA:Landroid/renderscript/ProgramStore$BlendSrcFunc;

.field public static final enum ONE_MINUS_DST_COLOR:Landroid/renderscript/ProgramStore$BlendSrcFunc;

.field public static final enum ONE_MINUS_SRC_ALPHA:Landroid/renderscript/ProgramStore$BlendSrcFunc;

.field public static final enum SRC_ALPHA:Landroid/renderscript/ProgramStore$BlendSrcFunc;

.field public static final enum SRC_ALPHA_SATURATE:Landroid/renderscript/ProgramStore$BlendSrcFunc;

.field public static final enum ZERO:Landroid/renderscript/ProgramStore$BlendSrcFunc;


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

    .line 98
    new-instance v0, Landroid/renderscript/ProgramStore$BlendSrcFunc;

    const-string v1, "ZERO"

    invoke-direct {v0, v1, v4, v4}, Landroid/renderscript/ProgramStore$BlendSrcFunc;-><init>(Ljava/lang/String;II)V

    sput-object v0, Landroid/renderscript/ProgramStore$BlendSrcFunc;->ZERO:Landroid/renderscript/ProgramStore$BlendSrcFunc;

    .line 99
    new-instance v0, Landroid/renderscript/ProgramStore$BlendSrcFunc;

    const-string v1, "ONE"

    invoke-direct {v0, v1, v5, v5}, Landroid/renderscript/ProgramStore$BlendSrcFunc;-><init>(Ljava/lang/String;II)V

    sput-object v0, Landroid/renderscript/ProgramStore$BlendSrcFunc;->ONE:Landroid/renderscript/ProgramStore$BlendSrcFunc;

    .line 100
    new-instance v0, Landroid/renderscript/ProgramStore$BlendSrcFunc;

    const-string v1, "DST_COLOR"

    invoke-direct {v0, v1, v6, v6}, Landroid/renderscript/ProgramStore$BlendSrcFunc;-><init>(Ljava/lang/String;II)V

    sput-object v0, Landroid/renderscript/ProgramStore$BlendSrcFunc;->DST_COLOR:Landroid/renderscript/ProgramStore$BlendSrcFunc;

    .line 101
    new-instance v0, Landroid/renderscript/ProgramStore$BlendSrcFunc;

    const-string v1, "ONE_MINUS_DST_COLOR"

    invoke-direct {v0, v1, v7, v7}, Landroid/renderscript/ProgramStore$BlendSrcFunc;-><init>(Ljava/lang/String;II)V

    sput-object v0, Landroid/renderscript/ProgramStore$BlendSrcFunc;->ONE_MINUS_DST_COLOR:Landroid/renderscript/ProgramStore$BlendSrcFunc;

    .line 102
    new-instance v0, Landroid/renderscript/ProgramStore$BlendSrcFunc;

    const-string v1, "SRC_ALPHA"

    invoke-direct {v0, v1, v8, v8}, Landroid/renderscript/ProgramStore$BlendSrcFunc;-><init>(Ljava/lang/String;II)V

    sput-object v0, Landroid/renderscript/ProgramStore$BlendSrcFunc;->SRC_ALPHA:Landroid/renderscript/ProgramStore$BlendSrcFunc;

    .line 103
    new-instance v0, Landroid/renderscript/ProgramStore$BlendSrcFunc;

    const-string v1, "ONE_MINUS_SRC_ALPHA"

    const/4 v2, 0x5

    const/4 v3, 0x5

    invoke-direct {v0, v1, v2, v3}, Landroid/renderscript/ProgramStore$BlendSrcFunc;-><init>(Ljava/lang/String;II)V

    sput-object v0, Landroid/renderscript/ProgramStore$BlendSrcFunc;->ONE_MINUS_SRC_ALPHA:Landroid/renderscript/ProgramStore$BlendSrcFunc;

    .line 104
    new-instance v0, Landroid/renderscript/ProgramStore$BlendSrcFunc;

    const-string v1, "DST_ALPHA"

    const/4 v2, 0x6

    const/4 v3, 0x6

    invoke-direct {v0, v1, v2, v3}, Landroid/renderscript/ProgramStore$BlendSrcFunc;-><init>(Ljava/lang/String;II)V

    sput-object v0, Landroid/renderscript/ProgramStore$BlendSrcFunc;->DST_ALPHA:Landroid/renderscript/ProgramStore$BlendSrcFunc;

    .line 105
    new-instance v0, Landroid/renderscript/ProgramStore$BlendSrcFunc;

    const-string v1, "ONE_MINUS_DST_ALPHA"

    const/4 v2, 0x7

    const/4 v3, 0x7

    invoke-direct {v0, v1, v2, v3}, Landroid/renderscript/ProgramStore$BlendSrcFunc;-><init>(Ljava/lang/String;II)V

    sput-object v0, Landroid/renderscript/ProgramStore$BlendSrcFunc;->ONE_MINUS_DST_ALPHA:Landroid/renderscript/ProgramStore$BlendSrcFunc;

    .line 106
    new-instance v0, Landroid/renderscript/ProgramStore$BlendSrcFunc;

    const-string v1, "SRC_ALPHA_SATURATE"

    const/16 v2, 0x8

    const/16 v3, 0x8

    invoke-direct {v0, v1, v2, v3}, Landroid/renderscript/ProgramStore$BlendSrcFunc;-><init>(Ljava/lang/String;II)V

    sput-object v0, Landroid/renderscript/ProgramStore$BlendSrcFunc;->SRC_ALPHA_SATURATE:Landroid/renderscript/ProgramStore$BlendSrcFunc;

    .line 97
    const/16 v0, 0x9

    new-array v0, v0, [Landroid/renderscript/ProgramStore$BlendSrcFunc;

    sget-object v1, Landroid/renderscript/ProgramStore$BlendSrcFunc;->ZERO:Landroid/renderscript/ProgramStore$BlendSrcFunc;

    aput-object v1, v0, v4

    sget-object v1, Landroid/renderscript/ProgramStore$BlendSrcFunc;->ONE:Landroid/renderscript/ProgramStore$BlendSrcFunc;

    aput-object v1, v0, v5

    sget-object v1, Landroid/renderscript/ProgramStore$BlendSrcFunc;->DST_COLOR:Landroid/renderscript/ProgramStore$BlendSrcFunc;

    aput-object v1, v0, v6

    sget-object v1, Landroid/renderscript/ProgramStore$BlendSrcFunc;->ONE_MINUS_DST_COLOR:Landroid/renderscript/ProgramStore$BlendSrcFunc;

    aput-object v1, v0, v7

    sget-object v1, Landroid/renderscript/ProgramStore$BlendSrcFunc;->SRC_ALPHA:Landroid/renderscript/ProgramStore$BlendSrcFunc;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, Landroid/renderscript/ProgramStore$BlendSrcFunc;->ONE_MINUS_SRC_ALPHA:Landroid/renderscript/ProgramStore$BlendSrcFunc;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Landroid/renderscript/ProgramStore$BlendSrcFunc;->DST_ALPHA:Landroid/renderscript/ProgramStore$BlendSrcFunc;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Landroid/renderscript/ProgramStore$BlendSrcFunc;->ONE_MINUS_DST_ALPHA:Landroid/renderscript/ProgramStore$BlendSrcFunc;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Landroid/renderscript/ProgramStore$BlendSrcFunc;->SRC_ALPHA_SATURATE:Landroid/renderscript/ProgramStore$BlendSrcFunc;

    aput-object v2, v0, v1

    sput-object v0, Landroid/renderscript/ProgramStore$BlendSrcFunc;->$VALUES:[Landroid/renderscript/ProgramStore$BlendSrcFunc;

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
    .line 109
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 110
    iput p3, p0, Landroid/renderscript/ProgramStore$BlendSrcFunc;->mID:I

    .line 111
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Landroid/renderscript/ProgramStore$BlendSrcFunc;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 97
    const-class v0, Landroid/renderscript/ProgramStore$BlendSrcFunc;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Landroid/renderscript/ProgramStore$BlendSrcFunc;

    return-object v0
.end method

.method public static values()[Landroid/renderscript/ProgramStore$BlendSrcFunc;
    .locals 1

    .prologue
    .line 97
    sget-object v0, Landroid/renderscript/ProgramStore$BlendSrcFunc;->$VALUES:[Landroid/renderscript/ProgramStore$BlendSrcFunc;

    invoke-virtual {v0}, [Landroid/renderscript/ProgramStore$BlendSrcFunc;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/renderscript/ProgramStore$BlendSrcFunc;

    return-object v0
.end method
