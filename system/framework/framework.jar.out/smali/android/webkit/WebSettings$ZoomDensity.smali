.class public final enum Landroid/webkit/WebSettings$ZoomDensity;
.super Ljava/lang/Enum;
.source "WebSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/webkit/WebSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ZoomDensity"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Landroid/webkit/WebSettings$ZoomDensity;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Landroid/webkit/WebSettings$ZoomDensity;

.field public static final enum CLOSE:Landroid/webkit/WebSettings$ZoomDensity;

.field public static final enum FAR:Landroid/webkit/WebSettings$ZoomDensity;

.field public static final enum MEDIUM:Landroid/webkit/WebSettings$ZoomDensity;


# instance fields
.field value:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 98
    new-instance v0, Landroid/webkit/WebSettings$ZoomDensity;

    const-string v1, "FAR"

    const/16 v2, 0x96

    invoke-direct {v0, v1, v3, v2}, Landroid/webkit/WebSettings$ZoomDensity;-><init>(Ljava/lang/String;II)V

    sput-object v0, Landroid/webkit/WebSettings$ZoomDensity;->FAR:Landroid/webkit/WebSettings$ZoomDensity;

    .line 99
    new-instance v0, Landroid/webkit/WebSettings$ZoomDensity;

    const-string v1, "MEDIUM"

    const/16 v2, 0x64

    invoke-direct {v0, v1, v4, v2}, Landroid/webkit/WebSettings$ZoomDensity;-><init>(Ljava/lang/String;II)V

    sput-object v0, Landroid/webkit/WebSettings$ZoomDensity;->MEDIUM:Landroid/webkit/WebSettings$ZoomDensity;

    .line 100
    new-instance v0, Landroid/webkit/WebSettings$ZoomDensity;

    const-string v1, "CLOSE"

    const/16 v2, 0x4b

    invoke-direct {v0, v1, v5, v2}, Landroid/webkit/WebSettings$ZoomDensity;-><init>(Ljava/lang/String;II)V

    sput-object v0, Landroid/webkit/WebSettings$ZoomDensity;->CLOSE:Landroid/webkit/WebSettings$ZoomDensity;

    .line 97
    const/4 v0, 0x3

    new-array v0, v0, [Landroid/webkit/WebSettings$ZoomDensity;

    sget-object v1, Landroid/webkit/WebSettings$ZoomDensity;->FAR:Landroid/webkit/WebSettings$ZoomDensity;

    aput-object v1, v0, v3

    sget-object v1, Landroid/webkit/WebSettings$ZoomDensity;->MEDIUM:Landroid/webkit/WebSettings$ZoomDensity;

    aput-object v1, v0, v4

    sget-object v1, Landroid/webkit/WebSettings$ZoomDensity;->CLOSE:Landroid/webkit/WebSettings$ZoomDensity;

    aput-object v1, v0, v5

    sput-object v0, Landroid/webkit/WebSettings$ZoomDensity;->$VALUES:[Landroid/webkit/WebSettings$ZoomDensity;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .param p3, "size"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .prologue
    .line 101
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 102
    iput p3, p0, Landroid/webkit/WebSettings$ZoomDensity;->value:I

    .line 103
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Landroid/webkit/WebSettings$ZoomDensity;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 97
    const-class v0, Landroid/webkit/WebSettings$ZoomDensity;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Landroid/webkit/WebSettings$ZoomDensity;

    return-object v0
.end method

.method public static values()[Landroid/webkit/WebSettings$ZoomDensity;
    .locals 1

    .prologue
    .line 97
    sget-object v0, Landroid/webkit/WebSettings$ZoomDensity;->$VALUES:[Landroid/webkit/WebSettings$ZoomDensity;

    invoke-virtual {v0}, [Landroid/webkit/WebSettings$ZoomDensity;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/webkit/WebSettings$ZoomDensity;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .locals 1

    .prologue
    .line 109
    iget v0, p0, Landroid/webkit/WebSettings$ZoomDensity;->value:I

    return v0
.end method
