.class abstract Landroid/graphics/Atlas$Policy;
.super Ljava/lang/Object;
.source "Atlas.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/graphics/Atlas;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "Policy"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 163
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/graphics/Atlas$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/graphics/Atlas$1;

    .prologue
    .line 163
    invoke-direct {p0}, Landroid/graphics/Atlas$Policy;-><init>()V

    return-void
.end method


# virtual methods
.method abstract pack(IILandroid/graphics/Atlas$Entry;)Landroid/graphics/Atlas$Entry;
.end method
