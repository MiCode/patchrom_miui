.class Lcom/android/settings/deviceinfo/MsdInstallPicker$MyAdapter;
.super Landroid/widget/BaseAdapter;
.source "MsdInstallPicker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/deviceinfo/MsdInstallPicker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyAdapter"
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mHolders:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/settings/deviceinfo/MsdInstallPicker$Holder;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/settings/deviceinfo/MsdInstallPicker;


# direct methods
.method public constructor <init>(Lcom/android/settings/deviceinfo/MsdInstallPicker;Landroid/content/Context;Ljava/util/ArrayList;)V
    .locals 0
    .parameter
    .parameter "context"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/settings/deviceinfo/MsdInstallPicker$Holder;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 82
    .local p3, holderList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/settings/deviceinfo/MsdInstallPicker$Holder;>;"
    iput-object p1, p0, Lcom/android/settings/deviceinfo/MsdInstallPicker$MyAdapter;->this$0:Lcom/android/settings/deviceinfo/MsdInstallPicker;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 83
    iput-object p2, p0, Lcom/android/settings/deviceinfo/MsdInstallPicker$MyAdapter;->mContext:Landroid/content/Context;

    .line 84
    iput-object p3, p0, Lcom/android/settings/deviceinfo/MsdInstallPicker$MyAdapter;->mHolders:Ljava/util/ArrayList;

    .line 85
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lcom/android/settings/deviceinfo/MsdInstallPicker$MyAdapter;->mHolders:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Lcom/android/settings/deviceinfo/MsdInstallPicker$Holder;
    .locals 1
    .parameter "position"

    .prologue
    .line 94
    iget-object v0, p0, Lcom/android/settings/deviceinfo/MsdInstallPicker$MyAdapter;->mHolders:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/deviceinfo/MsdInstallPicker$Holder;

    return-object v0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 78
    invoke-virtual {p0, p1}, Lcom/android/settings/deviceinfo/MsdInstallPicker$MyAdapter;->getItem(I)Lcom/android/settings/deviceinfo/MsdInstallPicker$Holder;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 99
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 104
    iget-object v3, p0, Lcom/android/settings/deviceinfo/MsdInstallPicker$MyAdapter;->mContext:Landroid/content/Context;

    const-string v4, "layout_inflater"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    .line 106
    .local v1, inflater:Landroid/view/LayoutInflater;
    if-nez p2, :cond_1

    const v3, 0x7f040066

    const/4 v4, 0x0

    invoke-virtual {v1, v3, p3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    .line 110
    .local v2, view:Landroid/view/View;
    :goto_0
    invoke-virtual {p0, p1}, Lcom/android/settings/deviceinfo/MsdInstallPicker$MyAdapter;->getItem(I)Lcom/android/settings/deviceinfo/MsdInstallPicker$Holder;

    move-result-object v0

    .line 111
    .local v0, holder:Lcom/android/settings/deviceinfo/MsdInstallPicker$Holder;
    if-eqz v0, :cond_0

    move-object v3, v2

    .line 112
    check-cast v3, Landroid/widget/RadioButton;

    iget-object v4, v0, Lcom/android/settings/deviceinfo/MsdInstallPicker$Holder;->mText:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/widget/RadioButton;->setText(Ljava/lang/CharSequence;)V

    move-object v3, v2

    .line 113
    check-cast v3, Landroid/widget/RadioButton;

    iget-boolean v4, v0, Lcom/android/settings/deviceinfo/MsdInstallPicker$Holder;->mIsChecked:Z

    invoke-virtual {v3, v4}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 116
    :cond_0
    return-object v2

    .end local v0           #holder:Lcom/android/settings/deviceinfo/MsdInstallPicker$Holder;
    .end local v2           #view:Landroid/view/View;
    :cond_1
    move-object v2, p2

    .line 106
    goto :goto_0
.end method
