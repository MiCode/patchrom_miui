.class Landroid/accounts/ChooseAccountActivity$AccountArrayAdapter;
.super Landroid/widget/ArrayAdapter;
.source "ChooseAccountActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/accounts/ChooseAccountActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AccountArrayAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Landroid/accounts/ChooseAccountActivity$AccountInfo;",
        ">;"
    }
.end annotation


# instance fields
.field private mInfos:[Landroid/accounts/ChooseAccountActivity$AccountInfo;

.field private mLayoutInflater:Landroid/view/LayoutInflater;


# direct methods
.method public constructor <init>(Landroid/content/Context;I[Landroid/accounts/ChooseAccountActivity$AccountInfo;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "textViewResourceId"    # I
    .param p3, "infos"    # [Landroid/accounts/ChooseAccountActivity$AccountInfo;

    .prologue
    .line 160
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    .line 161
    iput-object p3, p0, Landroid/accounts/ChooseAccountActivity$AccountArrayAdapter;->mInfos:[Landroid/accounts/ChooseAccountActivity$AccountInfo;

    .line 162
    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Landroid/accounts/ChooseAccountActivity$AccountArrayAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    .line 164
    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v3, 0x0

    .line 170
    if-nez p2, :cond_0

    .line 171
    iget-object v1, p0, Landroid/accounts/ChooseAccountActivity$AccountArrayAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    sget v2, Lcom/android/internal/R$layout;->choose_account_row:I

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 172
    new-instance v0, Landroid/accounts/ChooseAccountActivity$ViewHolder;

    invoke-direct {v0, v3}, Landroid/accounts/ChooseAccountActivity$ViewHolder;-><init>(Landroid/accounts/ChooseAccountActivity$1;)V

    .line 173
    .local v0, "holder":Landroid/accounts/ChooseAccountActivity$ViewHolder;
    sget v1, Lcom/android/internal/R$id;->account_row_text:I

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v0, Landroid/accounts/ChooseAccountActivity$ViewHolder;->text:Landroid/widget/TextView;

    .line 174
    sget v1, Lcom/android/internal/R$id;->account_row_icon:I

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, v0, Landroid/accounts/ChooseAccountActivity$ViewHolder;->icon:Landroid/widget/ImageView;

    .line 175
    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 180
    :goto_0
    iget-object v1, v0, Landroid/accounts/ChooseAccountActivity$ViewHolder;->text:Landroid/widget/TextView;

    iget-object v2, p0, Landroid/accounts/ChooseAccountActivity$AccountArrayAdapter;->mInfos:[Landroid/accounts/ChooseAccountActivity$AccountInfo;

    aget-object v2, v2, p1

    iget-object v2, v2, Landroid/accounts/ChooseAccountActivity$AccountInfo;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 181
    iget-object v1, v0, Landroid/accounts/ChooseAccountActivity$ViewHolder;->icon:Landroid/widget/ImageView;

    iget-object v2, p0, Landroid/accounts/ChooseAccountActivity$AccountArrayAdapter;->mInfos:[Landroid/accounts/ChooseAccountActivity$AccountInfo;

    aget-object v2, v2, p1

    iget-object v2, v2, Landroid/accounts/ChooseAccountActivity$AccountInfo;->drawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 183
    return-object p2

    .line 177
    .end local v0    # "holder":Landroid/accounts/ChooseAccountActivity$ViewHolder;
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/accounts/ChooseAccountActivity$ViewHolder;

    .restart local v0    # "holder":Landroid/accounts/ChooseAccountActivity$ViewHolder;
    goto :goto_0
.end method
