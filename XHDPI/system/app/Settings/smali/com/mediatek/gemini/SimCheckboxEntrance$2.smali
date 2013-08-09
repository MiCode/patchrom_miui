.class Lcom/mediatek/gemini/SimCheckboxEntrance$2;
.super Ljava/lang/Object;
.source "SimCheckboxEntrance.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mediatek/gemini/SimCheckboxEntrance;->addSimInfoPreference()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/gemini/SimCheckboxEntrance;


# direct methods
.method constructor <init>(Lcom/mediatek/gemini/SimCheckboxEntrance;)V
    .locals 0
    .parameter

    .prologue
    .line 156
    iput-object p1, p0, Lcom/mediatek/gemini/SimCheckboxEntrance$2;->this$0:Lcom/mediatek/gemini/SimCheckboxEntrance;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 2
    .parameter "preference"

    .prologue
    .line 160
    iget-object v0, p0, Lcom/mediatek/gemini/SimCheckboxEntrance$2;->this$0:Lcom/mediatek/gemini/SimCheckboxEntrance;

    iget-object v1, p0, Lcom/mediatek/gemini/SimCheckboxEntrance$2;->this$0:Lcom/mediatek/gemini/SimCheckboxEntrance;

    invoke-virtual {v1}, Lcom/mediatek/gemini/SimCheckboxEntrance;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/mediatek/gemini/SimCheckboxEntrance;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    .line 161
    const/4 v0, 0x1

    return v0
.end method
