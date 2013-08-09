.class Lcom/android/settings/FrequentlyFragment$1$1;
.super Ljava/lang/Object;
.source "FrequentlyFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/FrequentlyFragment$1;->onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/settings/FrequentlyFragment$1;

.field final synthetic val$header:Landroid/preference/PreferenceActivity$Header;


# direct methods
.method constructor <init>(Lcom/android/settings/FrequentlyFragment$1;Landroid/preference/PreferenceActivity$Header;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 48
    iput-object p1, p0, Lcom/android/settings/FrequentlyFragment$1$1;->this$1:Lcom/android/settings/FrequentlyFragment$1;

    iput-object p2, p0, Lcom/android/settings/FrequentlyFragment$1$1;->val$header:Landroid/preference/PreferenceActivity$Header;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 51
    iget-object v1, p0, Lcom/android/settings/FrequentlyFragment$1$1;->val$header:Landroid/preference/PreferenceActivity$Header;

    iget-wide v1, v1, Landroid/preference/PreferenceActivity$Header;->id:J

    long-to-int v1, v1

    invoke-static {v1}, Lcom/android/settings/FrequentlySet;->getKeyIndex(I)I

    move-result v0

    .line 52
    .local v0, index:I
    if-ltz v0, :cond_0

    .line 53
    iget-object v1, p0, Lcom/android/settings/FrequentlyFragment$1$1;->this$1:Lcom/android/settings/FrequentlyFragment$1;

    iget-object v1, v1, Lcom/android/settings/FrequentlyFragment$1;->this$0:Lcom/android/settings/FrequentlyFragment;

    invoke-virtual {v1}, Lcom/android/settings/FrequentlyFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v0}, Lcom/android/settings/FrequentlySet;->getKey(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/settings/provider/MiuiSettingsUtil;->clearCount(Landroid/content/Context;Ljava/lang/String;)V

    .line 54
    iget-object v1, p0, Lcom/android/settings/FrequentlyFragment$1$1;->this$1:Lcom/android/settings/FrequentlyFragment$1;

    iget-object v1, v1, Lcom/android/settings/FrequentlyFragment$1;->this$0:Lcom/android/settings/FrequentlyFragment;

    invoke-virtual {v1}, Lcom/android/settings/FrequentlyFragment;->buildAdapter()V

    .line 56
    :cond_0
    return-void
.end method
