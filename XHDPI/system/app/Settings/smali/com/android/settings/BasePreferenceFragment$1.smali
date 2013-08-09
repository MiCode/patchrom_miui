.class Lcom/android/settings/BasePreferenceFragment$1;
.super Ljava/lang/Object;
.source "BasePreferenceFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/BasePreferenceFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/BasePreferenceFragment;


# direct methods
.method constructor <init>(Lcom/android/settings/BasePreferenceFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 83
    iput-object p1, p0, Lcom/android/settings/BasePreferenceFragment$1;->this$0:Lcom/android/settings/BasePreferenceFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2
    .parameter
    .parameter "view"
    .parameter "position"
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 87
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    iget-object v1, p0, Lcom/android/settings/BasePreferenceFragment$1;->this$0:Lcom/android/settings/BasePreferenceFragment;

    iget-object v1, v1, Lcom/android/settings/BasePreferenceFragment;->mHeaders:Ljava/util/List;

    invoke-interface {v1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceActivity$Header;

    .line 88
    .local v0, header:Landroid/preference/PreferenceActivity$Header;
    iget-object v1, p0, Lcom/android/settings/BasePreferenceFragment$1;->this$0:Lcom/android/settings/BasePreferenceFragment;

    #calls: Lcom/android/settings/BasePreferenceFragment;->onHeaderClick(Landroid/preference/PreferenceActivity$Header;I)V
    invoke-static {v1, v0, p3}, Lcom/android/settings/BasePreferenceFragment;->access$000(Lcom/android/settings/BasePreferenceFragment;Landroid/preference/PreferenceActivity$Header;I)V

    .line 89
    return-void
.end method
