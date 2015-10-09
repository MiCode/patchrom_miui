.class public final enum Landroid/text/Layout$Alignment;
.super Ljava/lang/Enum;
.source "Layout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/text/Layout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Alignment"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Landroid/text/Layout$Alignment;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Landroid/text/Layout$Alignment;

.field public static final enum ALIGN_CENTER:Landroid/text/Layout$Alignment;

.field public static final enum ALIGN_LEFT:Landroid/text/Layout$Alignment;

.field public static final enum ALIGN_NORMAL:Landroid/text/Layout$Alignment;

.field public static final enum ALIGN_OPPOSITE:Landroid/text/Layout$Alignment;

.field public static final enum ALIGN_RIGHT:Landroid/text/Layout$Alignment;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1925
    new-instance v0, Landroid/text/Layout$Alignment;

    const-string v1, "ALIGN_NORMAL"

    invoke-direct {v0, v1, v2}, Landroid/text/Layout$Alignment;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    .line 1926
    new-instance v0, Landroid/text/Layout$Alignment;

    const-string v1, "ALIGN_OPPOSITE"

    invoke-direct {v0, v1, v3}, Landroid/text/Layout$Alignment;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/text/Layout$Alignment;->ALIGN_OPPOSITE:Landroid/text/Layout$Alignment;

    .line 1927
    new-instance v0, Landroid/text/Layout$Alignment;

    const-string v1, "ALIGN_CENTER"

    invoke-direct {v0, v1, v4}, Landroid/text/Layout$Alignment;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/text/Layout$Alignment;->ALIGN_CENTER:Landroid/text/Layout$Alignment;

    .line 1929
    new-instance v0, Landroid/text/Layout$Alignment;

    const-string v1, "ALIGN_LEFT"

    invoke-direct {v0, v1, v5}, Landroid/text/Layout$Alignment;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/text/Layout$Alignment;->ALIGN_LEFT:Landroid/text/Layout$Alignment;

    .line 1931
    new-instance v0, Landroid/text/Layout$Alignment;

    const-string v1, "ALIGN_RIGHT"

    invoke-direct {v0, v1, v6}, Landroid/text/Layout$Alignment;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/text/Layout$Alignment;->ALIGN_RIGHT:Landroid/text/Layout$Alignment;

    .line 1924
    const/4 v0, 0x5

    new-array v0, v0, [Landroid/text/Layout$Alignment;

    sget-object v1, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    aput-object v1, v0, v2

    sget-object v1, Landroid/text/Layout$Alignment;->ALIGN_OPPOSITE:Landroid/text/Layout$Alignment;

    aput-object v1, v0, v3

    sget-object v1, Landroid/text/Layout$Alignment;->ALIGN_CENTER:Landroid/text/Layout$Alignment;

    aput-object v1, v0, v4

    sget-object v1, Landroid/text/Layout$Alignment;->ALIGN_LEFT:Landroid/text/Layout$Alignment;

    aput-object v1, v0, v5

    sget-object v1, Landroid/text/Layout$Alignment;->ALIGN_RIGHT:Landroid/text/Layout$Alignment;

    aput-object v1, v0, v6

    sput-object v0, Landroid/text/Layout$Alignment;->$VALUES:[Landroid/text/Layout$Alignment;

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
    .line 1924
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Landroid/text/Layout$Alignment;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 1924
    const-class v0, Landroid/text/Layout$Alignment;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Landroid/text/Layout$Alignment;

    return-object v0
.end method

.method public static values()[Landroid/text/Layout$Alignment;
    .locals 1

    .prologue
    .line 1924
    sget-object v0, Landroid/text/Layout$Alignment;->$VALUES:[Landroid/text/Layout$Alignment;

    invoke-virtual {v0}, [Landroid/text/Layout$Alignment;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/text/Layout$Alignment;

    return-object v0
.end method
