.class Lcom/android/settings/applications/ButtonPreference$1;
.super Ljava/lang/Object;
.source "ButtonPreference.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/applications/ButtonPreference;->onCreateView(Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/applications/ButtonPreference;


# direct methods
.method constructor <init>(Lcom/android/settings/applications/ButtonPreference;)V
    .locals 0
    .parameter

    .prologue
    .line 39
    iput-object p1, p0, Lcom/android/settings/applications/ButtonPreference$1;->this$0:Lcom/android/settings/applications/ButtonPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 42
    iget-object v0, p0, Lcom/android/settings/applications/ButtonPreference$1;->this$0:Lcom/android/settings/applications/ButtonPreference;

    #getter for: Lcom/android/settings/applications/ButtonPreference;->mListener:Landroid/preference/Preference$OnPreferenceClickListener;
    invoke-static {v0}, Lcom/android/settings/applications/ButtonPreference;->access$000(Lcom/android/settings/applications/ButtonPreference;)Landroid/preference/Preference$OnPreferenceClickListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 43
    iget-object v0, p0, Lcom/android/settings/applications/ButtonPreference$1;->this$0:Lcom/android/settings/applications/ButtonPreference;

    #getter for: Lcom/android/settings/applications/ButtonPreference;->mListener:Landroid/preference/Preference$OnPreferenceClickListener;
    invoke-static {v0}, Lcom/android/settings/applications/ButtonPreference;->access$000(Lcom/android/settings/applications/ButtonPreference;)Landroid/preference/Preference$OnPreferenceClickListener;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/applications/ButtonPreference$1;->this$0:Lcom/android/settings/applications/ButtonPreference;

    invoke-interface {v0, v1}, Landroid/preference/Preference$OnPreferenceClickListener;->onPreferenceClick(Landroid/preference/Preference;)Z

    .line 45
    :cond_0
    return-void
.end method
