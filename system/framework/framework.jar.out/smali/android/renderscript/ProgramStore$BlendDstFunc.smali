.class public final enum Landroid/renderscript/ProgramStore$BlendDstFunc;
.super Ljava/lang/Enum;
.source "ProgramStore.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/renderscript/ProgramStore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "BlendDstFunc"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Landroid/renderscript/ProgramStore$BlendDstFunc;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Landroid/renderscript/ProgramStore$BlendDstFunc;

.field public static final enum DST_ALPHA:Landroid/renderscript/ProgramStore$BlendDstFunc;

.field public static final enum ONE:Landroid/renderscript/ProgramStore$BlendDstFunc;

.field public static final enum ONE_MINUS_DST_ALPHA:Landroid/renderscript/ProgramStore$BlendDstFunc;

.field public static final enum ONE_MINUS_SRC_ALPHA:Landroid/renderscript/ProgramStore$BlendDstFunc;

.field public static final enum ONE_MINUS_SRC_COLOR:Landroid/renderscript/ProgramStore$BlendDstFunc;

.field public static final enum SRC_ALPHA:Landroid/renderscript/ProgramStore$BlendDstFunc;

.field public static final enum SRC_COLOR:Landroid/renderscript/ProgramStore$BlendDstFunc;

.field public static final enum ZERO:Landroid/renderscript/ProgramStore$BlendDstFunc;


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

    .line 124
    new-instance v0, Landroid/renderscript/ProgramStore$BlendDstFunc;

    const-string v1, "ZERO"

    invoke-direct {v0, v1, v4, v4}, Landroid/renderscript/ProgramStore$BlendDstFunc;-><init>(Ljava/lang/String;II)V

    sput-object v0, Landroid/renderscript/ProgramStore$BlendDstFunc;->ZERO:Landroid/renderscript/ProgramStore$BlendDstFunc;

    .line 125
    new-instance v0, Landroid/renderscript/ProgramStore$BlendDstFunc;

    const-string v1, "ONE"

    invoke-direct {v0, v1, v5, v5}, Landroid/renderscript/ProgramStore$BlendDstFunc;-><init>(Ljava/lang/String;II)V

    sput-object v0, Landroid/renderscript/ProgramStore$BlendDstFunc;->ONE:Landroid/renderscript/ProgramStore$BlendDstFunc;

    .line 126
    new-instance v0, Landroid/renderscript/ProgramStore$BlendDstFunc;

    const-string v1, "SRC_COLOR"

    invoke-direct {v0, v1, v6, v6}, Landroid/renderscript/ProgramStore$BlendDstFunc;-><init>(Ljava/lang/String;II)V

    sput-object v0, Landroid/renderscript/ProgramStore$BlendDstFunc;->SRC_COLOR:Landroid/renderscript/ProgramStore$BlendDstFunc;

    .line 127
    new-instance v0, Landroid/renderscript/ProgramStore$BlendDstFunc;

    const-string v1, "ONE_MINUS_SRC_COLOR"

    invoke-direct {v0, v1, v7, v7}, Landroid/renderscript/ProgramStore$BlendDstFunc;-><init>(Ljava/lang/String;II)V

    sput-object v0, Landroid/renderscript/ProgramStore$BlendDstFunc;->ONE_MINUS_SRC_COLOR:Landroid/renderscript/ProgramStore$BlendDstFunc;

    .line 128
    new-instance v0, Landroid/renderscript/ProgramStore$BlendDstFunc;

    const-string v1, "SRC_ALPHA"

    invoke-direct {v0, v1, v8, v8}, Landroid/renderscript/ProgramStore$BlendDstFunc;-><init>(Ljava/lang/String;II)V

    sput-object v0, Landroid/renderscript/ProgramStore$BlendDstFunc;->SRC_ALPHA:Landroid/renderscript/ProgramStore$BlendDstFunc;

    .line 129
    new-instance v0, Landroid/renderscript/ProgramStore$BlendDstFunc;

    const-string v1, "ONE_MINUS_SRC_ALPHA"

    const/4 v2, 0x5

    const/4 v3, 0x5

    invoke-direct {v0, v1, v2, v3}, Landroid/renderscript/ProgramStore$BlendDstFunc;-><init>(Ljava/lang/String;II)V

    sput-object v0, Landroid/renderscript/ProgramStore$BlendDstFunc;->ONE_MINUS_SRC_ALPHA:Landroid/renderscript/ProgramStore$BlendDstFunc;

    .line 130
    new-instance v0, Landroid/renderscript/ProgramStore$BlendDstFunc;

    const-string v1, "DST_ALPHA"

    const/4 v2, 0x6

    const/4 v3, 0x6

    invoke-direct {v0, v1, v2, v3}, Landroid/renderscript/ProgramStore$BlendDstFunc;-><init>(Ljava/lang/String;II)V

    sput-object v0, Landroid/renderscript/ProgramStore$BlendDstFunc;->DST_ALPHA:Landroid/renderscript/ProgramStore$BlendDstFunc;

    .line 131
    new-instance v0, Landroid/renderscript/ProgramStore$BlendDstFunc;

    const-string v1, "ONE_MINUS_DST_ALPHA"

    const/4 v2, 0x7

    const/4 v3, 0x7

    invoke-direct {v0, v1, v2, v3}, Landroid/renderscript/ProgramStore$BlendDstFunc;-><init>(Ljava/lang/String;II)V

    sput-object v0, Landroid/renderscript/ProgramStore$BlendDstFunc;->ONE_MINUS_DST_ALPHA:Landroid/renderscript/ProgramStore$BlendDstFunc;

    .line 123
    const/16 v0, 0x8

    new-array v0, v0, [Landroid/renderscript/ProgramStore$BlendDstFunc;

    sget-object v1, Landroid/renderscript/ProgramStore$BlendDstFunc;->ZERO:Landroid/renderscript/ProgramStore$BlendDstFunc;

    aput-object v1, v0, v4

    sget-object v1, Landroid/renderscript/ProgramStore$BlendDstFunc;->ONE:Landroid/renderscript/ProgramStore$BlendDstFunc;

    aput-object v1, v0, v5

    sget-object v1, Landroid/renderscript/ProgramStore$BlendDstFunc;->SRC_COLOR:Landroid/renderscript/ProgramStore$BlendDstFunc;

    aput-object v1, v0, v6

    sget-object v1, Landroid/renderscript/ProgramStore$BlendDstFunc;->ONE_MINUS_SRC_COLOR:Landroid/renderscript/ProgramStore$BlendDstFunc;

    aput-object v1, v0, v7

    sget-object v1, Landroid/renderscript/ProgramStore$BlendDstFunc;->SRC_ALPHA:Landroid/renderscript/ProgramStore$BlendDstFunc;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, Landroid/renderscript/ProgramStore$BlendDstFunc;->ONE_MINUS_SRC_ALPHA:Landroid/renderscript/ProgramStore$BlendDstFunc;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Landroid/renderscript/ProgramStore$BlendDstFunc;->DST_ALPHA:Landroid/renderscript/ProgramStore$BlendDstFunc;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Landroid/renderscript/ProgramStore$BlendDstFunc;->ONE_MINUS_DST_ALPHA:Landroid/renderscript/ProgramStore$BlendDstFunc;

    aput-object v2, v0, v1

    sput-object v0, Landroid/renderscript/ProgramStore$BlendDstFunc;->$VALUES:[Landroid/renderscript/ProgramStore$BlendDstFunc;

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
    .line 134
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 135
    iput p3, p0, Landroid/renderscript/ProgramStore$BlendDstFunc;->mID:I

    .line 136
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Landroid/renderscript/ProgramStore$BlendDstFunc;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 123
    const-class v0, Landroid/renderscript/ProgramStore$BlendDstFunc;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Landroid/renderscript/ProgramStore$BlendDstFunc;

    return-object v0
.end method

.method public static values()[Landroid/renderscript/ProgramStore$BlendDstFunc;
    .locals 1

    .prologue
    .line 123
    sget-object v0, Landroid/renderscript/ProgramStore$BlendDstFunc;->$VALUES:[Landroid/renderscript/ProgramStore$BlendDstFunc;

    invoke-virtual {v0}, [Landroid/renderscript/ProgramStore$BlendDstFunc;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/renderscript/ProgramStore$BlendDstFunc;

    return-object v0
.end method
