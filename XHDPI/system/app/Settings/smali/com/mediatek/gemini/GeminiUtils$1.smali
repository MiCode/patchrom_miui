.class Lcom/mediatek/gemini/GeminiUtils$1;
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

.field final synthetic val$gpsPreference:Landroid/preference/CheckBoxPreference;


# direct methods
.method constructor <init>(Lcom/mediatek/gemini/GeminiUtils;Landroid/preference/CheckBoxPreference;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 140
    iput-object p1, p0, Lcom/mediatek/gemini/GeminiUtils$1;->this$0:Lcom/mediatek/gemini/GeminiUtils;

    iput-object p2, p0, Lcom/mediatek/gemini/GeminiUtils$1;->val$gpsPreference:Landroid/preference/CheckBoxPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialoginterface"
    .parameter "i"

    .prologue
    .line 143
    iget-object v0, p0, Lcom/mediatek/gemini/GeminiUtils$1;->val$gpsPreference:Landroid/preference/CheckBoxPreference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 144
    return-void
.end method
