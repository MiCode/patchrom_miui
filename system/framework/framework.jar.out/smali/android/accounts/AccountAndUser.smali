.class public Landroid/accounts/AccountAndUser;
.super Ljava/lang/Object;
.source "AccountAndUser.java"


# instance fields
.field public account:Landroid/accounts/Account;

.field public userId:I


# direct methods
.method public constructor <init>(Landroid/accounts/Account;I)V
    .locals 0
    .param p1, "account"    # Landroid/accounts/Account;
    .param p2, "userId"    # I

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object p1, p0, Landroid/accounts/AccountAndUser;->account:Landroid/accounts/Account;

    .line 30
    iput p2, p0, Landroid/accounts/AccountAndUser;->userId:I

    .line 31
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 34
    if-ne p0, p1, :cond_1

    .line 37
    :cond_0
    :goto_0
    return v1

    .line 35
    :cond_1
    instance-of v3, p1, Landroid/accounts/AccountAndUser;

    if-nez v3, :cond_2

    move v1, v2

    goto :goto_0

    :cond_2
    move-object v0, p1

    .line 36
    check-cast v0, Landroid/accounts/AccountAndUser;

    .line 37
    .local v0, "other":Landroid/accounts/AccountAndUser;
    iget-object v3, p0, Landroid/accounts/AccountAndUser;->account:Landroid/accounts/Account;

    iget-object v4, v0, Landroid/accounts/AccountAndUser;->account:Landroid/accounts/Account;

    invoke-virtual {v3, v4}, Landroid/accounts/Account;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget v3, p0, Landroid/accounts/AccountAndUser;->userId:I

    iget v4, v0, Landroid/accounts/AccountAndUser;->userId:I

    if-eq v3, v4, :cond_0

    :cond_3
    move v1, v2

    goto :goto_0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 43
    iget-object v0, p0, Landroid/accounts/AccountAndUser;->account:Landroid/accounts/Account;

    invoke-virtual {v0}, Landroid/accounts/Account;->hashCode()I

    move-result v0

    iget v1, p0, Landroid/accounts/AccountAndUser;->userId:I

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 47
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Landroid/accounts/AccountAndUser;->account:Landroid/accounts/Account;

    invoke-virtual {v1}, Landroid/accounts/Account;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " u"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/accounts/AccountAndUser;->userId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
