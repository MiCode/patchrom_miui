.class Lcom/mediatek/gemini/SimInfoPreference$1;
.super Ljava/lang/Object;
.source "SimInfoPreference.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mediatek/gemini/SimInfoPreference;->getView(Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/gemini/SimInfoPreference;


# direct methods
.method constructor <init>(Lcom/mediatek/gemini/SimInfoPreference;)V
    .locals 0
    .parameter

    .prologue
    .line 248
    iput-object p1, p0, Lcom/mediatek/gemini/SimInfoPreference$1;->this$0:Lcom/mediatek/gemini/SimInfoPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 2
    .parameter "buttonView"
    .parameter "isChecked"

    .prologue
    .line 253
    iget-object v0, p0, Lcom/mediatek/gemini/SimInfoPreference$1;->this$0:Lcom/mediatek/gemini/SimInfoPreference;

    invoke-virtual {v0}, Lcom/mediatek/gemini/SimInfoPreference;->getOnPreferenceClickListener()Landroid/preference/Preference$OnPreferenceClickListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 254
    iget-object v0, p0, Lcom/mediatek/gemini/SimInfoPreference$1;->this$0:Lcom/mediatek/gemini/SimInfoPreference;

    invoke-virtual {v0}, Lcom/mediatek/gemini/SimInfoPreference;->getOnPreferenceClickListener()Landroid/preference/Preference$OnPreferenceClickListener;

    move-result-object v0

    iget-object v1, p0, Lcom/mediatek/gemini/SimInfoPreference$1;->this$0:Lcom/mediatek/gemini/SimInfoPreference;

    invoke-interface {v0, v1}, Landroid/preference/Preference$OnPreferenceClickListener;->onPreferenceClick(Landroid/preference/Preference;)Z

    .line 256
    :cond_0
    return-void
.end method
