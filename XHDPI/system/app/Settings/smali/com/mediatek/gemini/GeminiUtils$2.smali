.class Lcom/mediatek/gemini/GeminiUtils$2;
.super Ljava/lang/Object;
.source "GeminiUtils.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mediatek/gemini/GeminiUtils;->enableGps(Landroid/content/Context;Landroid/preference/CheckBoxPreference;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/gemini/GeminiUtils;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$gpsPreference:Landroid/preference/CheckBoxPreference;


# direct methods
.method constructor <init>(Lcom/mediatek/gemini/GeminiUtils;Landroid/preference/CheckBoxPreference;Landroid/content/Context;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 132
    iput-object p1, p0, Lcom/mediatek/gemini/GeminiUtils$2;->this$0:Lcom/mediatek/gemini/GeminiUtils;

    iput-object p2, p0, Lcom/mediatek/gemini/GeminiUtils$2;->val$gpsPreference:Landroid/preference/CheckBoxPreference;

    iput-object p3, p0, Lcom/mediatek/gemini/GeminiUtils$2;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .parameter "dialoginterface"
    .parameter "i"

    .prologue
    const/4 v3, 0x1

    .line 135
    iget-object v0, p0, Lcom/mediatek/gemini/GeminiUtils$2;->val$gpsPreference:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v3}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 136
    iget-object v0, p0, Lcom/mediatek/gemini/GeminiUtils$2;->this$0:Lcom/mediatek/gemini/GeminiUtils;

    iget-object v1, p0, Lcom/mediatek/gemini/GeminiUtils$2;->val$context:Landroid/content/Context;

    iget-object v2, p0, Lcom/mediatek/gemini/GeminiUtils$2;->val$gpsPreference:Landroid/preference/CheckBoxPreference;

    #calls: Lcom/android/settings/MiuiUtils;->enableGps(Landroid/content/Context;Landroid/preference/CheckBoxPreference;Z)V
    invoke-static {v0, v1, v2, v3}, Lcom/mediatek/gemini/GeminiUtils;->access$001(Lcom/mediatek/gemini/GeminiUtils;Landroid/content/Context;Landroid/preference/CheckBoxPreference;Z)V

    .line 137
    return-void
.end method
