.class final Landroid/app/ActivityThread$ProviderKey;
.super Ljava/lang/Object;
.source "ActivityThread.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/ActivityThread;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ProviderKey"
.end annotation


# instance fields
.field final authority:Ljava/lang/String;

.field final userId:I


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .param p1, "authority"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .prologue
    .line 215
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 216
    iput-object p1, p0, Landroid/app/ActivityThread$ProviderKey;->authority:Ljava/lang/String;

    .line 217
    iput p2, p0, Landroid/app/ActivityThread$ProviderKey;->userId:I

    .line 218
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    .line 222
    instance-of v2, p1, Landroid/app/ActivityThread$ProviderKey;

    if-eqz v2, :cond_0

    move-object v0, p1

    .line 223
    check-cast v0, Landroid/app/ActivityThread$ProviderKey;

    .line 224
    .local v0, "other":Landroid/app/ActivityThread$ProviderKey;
    iget-object v2, p0, Landroid/app/ActivityThread$ProviderKey;->authority:Ljava/lang/String;

    iget-object v3, v0, Landroid/app/ActivityThread$ProviderKey;->authority:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/android/internal/util/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget v2, p0, Landroid/app/ActivityThread$ProviderKey;->userId:I

    iget v3, v0, Landroid/app/ActivityThread$ProviderKey;->userId:I

    if-ne v2, v3, :cond_0

    const/4 v1, 0x1

    .line 226
    .end local v0    # "other":Landroid/app/ActivityThread$ProviderKey;
    :cond_0
    return v1
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 231
    iget-object v0, p0, Landroid/app/ActivityThread$ProviderKey;->authority:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/app/ActivityThread$ProviderKey;->authority:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_0
    iget v1, p0, Landroid/app/ActivityThread$ProviderKey;->userId:I

    xor-int/2addr v0, v1

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
