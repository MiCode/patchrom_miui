.class public Landroid/graphics/Insets;
.super Ljava/lang/Object;
.source "Insets.java"


# static fields
.field public static final NONE:Landroid/graphics/Insets;


# instance fields
.field public final bottom:I

.field public final left:I

.field public final right:I

.field public final top:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 29
    new-instance v0, Landroid/graphics/Insets;

    invoke-direct {v0, v1, v1, v1, v1}, Landroid/graphics/Insets;-><init>(IIII)V

    sput-object v0, Landroid/graphics/Insets;->NONE:Landroid/graphics/Insets;

    return-void
.end method

.method private constructor <init>(IIII)V
    .locals 0
    .param p1, "left"    # I
    .param p2, "top"    # I
    .param p3, "right"    # I
    .param p4, "bottom"    # I

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput p1, p0, Landroid/graphics/Insets;->left:I

    .line 38
    iput p2, p0, Landroid/graphics/Insets;->top:I

    .line 39
    iput p3, p0, Landroid/graphics/Insets;->right:I

    .line 40
    iput p4, p0, Landroid/graphics/Insets;->bottom:I

    .line 41
    return-void
.end method

.method public static of(IIII)Landroid/graphics/Insets;
    .locals 1
    .param p0, "left"    # I
    .param p1, "top"    # I
    .param p2, "right"    # I
    .param p3, "bottom"    # I

    .prologue
    .line 56
    if-nez p0, :cond_0

    if-nez p1, :cond_0

    if-nez p2, :cond_0

    if-nez p3, :cond_0

    .line 57
    sget-object v0, Landroid/graphics/Insets;->NONE:Landroid/graphics/Insets;

    .line 59
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Landroid/graphics/Insets;

    invoke-direct {v0, p0, p1, p2, p3}, Landroid/graphics/Insets;-><init>(IIII)V

    goto :goto_0
.end method

.method public static of(Landroid/graphics/Rect;)Landroid/graphics/Insets;
    .locals 4
    .param p0, "r"    # Landroid/graphics/Rect;

    .prologue
    .line 70
    if-nez p0, :cond_0

    sget-object v0, Landroid/graphics/Insets;->NONE:Landroid/graphics/Insets;

    :goto_0
    return-object v0

    :cond_0
    iget v0, p0, Landroid/graphics/Rect;->left:I

    iget v1, p0, Landroid/graphics/Rect;->top:I

    iget v2, p0, Landroid/graphics/Rect;->right:I

    iget v3, p0, Landroid/graphics/Rect;->bottom:I

    invoke-static {v0, v1, v2, v3}, Landroid/graphics/Insets;->of(IIII)Landroid/graphics/Insets;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 83
    if-ne p0, p1, :cond_1

    .line 93
    :cond_0
    :goto_0
    return v1

    .line 84
    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-eq v3, v4, :cond_3

    :cond_2
    move v1, v2

    goto :goto_0

    :cond_3
    move-object v0, p1

    .line 86
    check-cast v0, Landroid/graphics/Insets;

    .line 88
    .local v0, "insets":Landroid/graphics/Insets;
    iget v3, p0, Landroid/graphics/Insets;->bottom:I

    iget v4, v0, Landroid/graphics/Insets;->bottom:I

    if-eq v3, v4, :cond_4

    move v1, v2

    goto :goto_0

    .line 89
    :cond_4
    iget v3, p0, Landroid/graphics/Insets;->left:I

    iget v4, v0, Landroid/graphics/Insets;->left:I

    if-eq v3, v4, :cond_5

    move v1, v2

    goto :goto_0

    .line 90
    :cond_5
    iget v3, p0, Landroid/graphics/Insets;->right:I

    iget v4, v0, Landroid/graphics/Insets;->right:I

    if-eq v3, v4, :cond_6

    move v1, v2

    goto :goto_0

    .line 91
    :cond_6
    iget v3, p0, Landroid/graphics/Insets;->top:I

    iget v4, v0, Landroid/graphics/Insets;->top:I

    if-eq v3, v4, :cond_0

    move v1, v2

    goto :goto_0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 98
    iget v0, p0, Landroid/graphics/Insets;->left:I

    .line 99
    .local v0, "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Landroid/graphics/Insets;->top:I

    add-int v0, v1, v2

    .line 100
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Landroid/graphics/Insets;->right:I

    add-int v0, v1, v2

    .line 101
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Landroid/graphics/Insets;->bottom:I

    add-int v0, v1, v2

    .line 102
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 107
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Insets{left="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/graphics/Insets;->left:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", top="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/graphics/Insets;->top:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", right="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/graphics/Insets;->right:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", bottom="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/graphics/Insets;->bottom:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
