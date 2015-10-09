.class public final enum Landroid/renderscript/Font$Style;
.super Ljava/lang/Enum;
.source "Font.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/renderscript/Font;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Style"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Landroid/renderscript/Font$Style;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Landroid/renderscript/Font$Style;

.field public static final enum BOLD:Landroid/renderscript/Font$Style;

.field public static final enum BOLD_ITALIC:Landroid/renderscript/Font$Style;

.field public static final enum ITALIC:Landroid/renderscript/Font$Style;

.field public static final enum NORMAL:Landroid/renderscript/Font$Style;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 83
    new-instance v0, Landroid/renderscript/Font$Style;

    const-string v1, "NORMAL"

    invoke-direct {v0, v1, v2}, Landroid/renderscript/Font$Style;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/renderscript/Font$Style;->NORMAL:Landroid/renderscript/Font$Style;

    .line 87
    new-instance v0, Landroid/renderscript/Font$Style;

    const-string v1, "BOLD"

    invoke-direct {v0, v1, v3}, Landroid/renderscript/Font$Style;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/renderscript/Font$Style;->BOLD:Landroid/renderscript/Font$Style;

    .line 91
    new-instance v0, Landroid/renderscript/Font$Style;

    const-string v1, "ITALIC"

    invoke-direct {v0, v1, v4}, Landroid/renderscript/Font$Style;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/renderscript/Font$Style;->ITALIC:Landroid/renderscript/Font$Style;

    .line 95
    new-instance v0, Landroid/renderscript/Font$Style;

    const-string v1, "BOLD_ITALIC"

    invoke-direct {v0, v1, v5}, Landroid/renderscript/Font$Style;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/renderscript/Font$Style;->BOLD_ITALIC:Landroid/renderscript/Font$Style;

    .line 79
    const/4 v0, 0x4

    new-array v0, v0, [Landroid/renderscript/Font$Style;

    sget-object v1, Landroid/renderscript/Font$Style;->NORMAL:Landroid/renderscript/Font$Style;

    aput-object v1, v0, v2

    sget-object v1, Landroid/renderscript/Font$Style;->BOLD:Landroid/renderscript/Font$Style;

    aput-object v1, v0, v3

    sget-object v1, Landroid/renderscript/Font$Style;->ITALIC:Landroid/renderscript/Font$Style;

    aput-object v1, v0, v4

    sget-object v1, Landroid/renderscript/Font$Style;->BOLD_ITALIC:Landroid/renderscript/Font$Style;

    aput-object v1, v0, v5

    sput-object v0, Landroid/renderscript/Font$Style;->$VALUES:[Landroid/renderscript/Font$Style;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 79
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Landroid/renderscript/Font$Style;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 79
    const-class v0, Landroid/renderscript/Font$Style;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Landroid/renderscript/Font$Style;

    return-object v0
.end method

.method public static values()[Landroid/renderscript/Font$Style;
    .locals 1

    .prologue
    .line 79
    sget-object v0, Landroid/renderscript/Font$Style;->$VALUES:[Landroid/renderscript/Font$Style;

    invoke-virtual {v0}, [Landroid/renderscript/Font$Style;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/renderscript/Font$Style;

    return-object v0
.end method
