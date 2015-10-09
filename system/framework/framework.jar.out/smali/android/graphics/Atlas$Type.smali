.class public final enum Landroid/graphics/Atlas$Type;
.super Ljava/lang/Enum;
.source "Atlas.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/graphics/Atlas;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Type"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Landroid/graphics/Atlas$Type;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Landroid/graphics/Atlas$Type;

.field public static final enum SliceLongAxis:Landroid/graphics/Atlas$Type;

.field public static final enum SliceMaxArea:Landroid/graphics/Atlas$Type;

.field public static final enum SliceMinArea:Landroid/graphics/Atlas$Type;

.field public static final enum SliceShortAxis:Landroid/graphics/Atlas$Type;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 47
    new-instance v0, Landroid/graphics/Atlas$Type;

    const-string v1, "SliceMinArea"

    invoke-direct {v0, v1, v2}, Landroid/graphics/Atlas$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/graphics/Atlas$Type;->SliceMinArea:Landroid/graphics/Atlas$Type;

    .line 48
    new-instance v0, Landroid/graphics/Atlas$Type;

    const-string v1, "SliceMaxArea"

    invoke-direct {v0, v1, v3}, Landroid/graphics/Atlas$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/graphics/Atlas$Type;->SliceMaxArea:Landroid/graphics/Atlas$Type;

    .line 49
    new-instance v0, Landroid/graphics/Atlas$Type;

    const-string v1, "SliceShortAxis"

    invoke-direct {v0, v1, v4}, Landroid/graphics/Atlas$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/graphics/Atlas$Type;->SliceShortAxis:Landroid/graphics/Atlas$Type;

    .line 50
    new-instance v0, Landroid/graphics/Atlas$Type;

    const-string v1, "SliceLongAxis"

    invoke-direct {v0, v1, v5}, Landroid/graphics/Atlas$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/graphics/Atlas$Type;->SliceLongAxis:Landroid/graphics/Atlas$Type;

    .line 46
    const/4 v0, 0x4

    new-array v0, v0, [Landroid/graphics/Atlas$Type;

    sget-object v1, Landroid/graphics/Atlas$Type;->SliceMinArea:Landroid/graphics/Atlas$Type;

    aput-object v1, v0, v2

    sget-object v1, Landroid/graphics/Atlas$Type;->SliceMaxArea:Landroid/graphics/Atlas$Type;

    aput-object v1, v0, v3

    sget-object v1, Landroid/graphics/Atlas$Type;->SliceShortAxis:Landroid/graphics/Atlas$Type;

    aput-object v1, v0, v4

    sget-object v1, Landroid/graphics/Atlas$Type;->SliceLongAxis:Landroid/graphics/Atlas$Type;

    aput-object v1, v0, v5

    sput-object v0, Landroid/graphics/Atlas$Type;->$VALUES:[Landroid/graphics/Atlas$Type;

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
    .line 46
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Landroid/graphics/Atlas$Type;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 46
    const-class v0, Landroid/graphics/Atlas$Type;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Landroid/graphics/Atlas$Type;

    return-object v0
.end method

.method public static values()[Landroid/graphics/Atlas$Type;
    .locals 1

    .prologue
    .line 46
    sget-object v0, Landroid/graphics/Atlas$Type;->$VALUES:[Landroid/graphics/Atlas$Type;

    invoke-virtual {v0}, [Landroid/graphics/Atlas$Type;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/graphics/Atlas$Type;

    return-object v0
.end method
