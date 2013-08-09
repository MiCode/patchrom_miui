.class Lcom/mediatek/audioprofile/AudioProfilePreference$1;
.super Ljava/lang/Object;
.source "AudioProfilePreference.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mediatek/audioprofile/AudioProfilePreference;->onCreateView(Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/audioprofile/AudioProfilePreference;


# direct methods
.method constructor <init>(Lcom/mediatek/audioprofile/AudioProfilePreference;)V
    .locals 0
    .parameter

    .prologue
    .line 180
    iput-object p1, p0, Lcom/mediatek/audioprofile/AudioProfilePreference$1;->this$0:Lcom/mediatek/audioprofile/AudioProfilePreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 184
    const-string v0, "Settings/AudioP"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AudioProfilePreference:onClick "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/audioprofile/AudioProfilePreference$1;->this$0:Lcom/mediatek/audioprofile/AudioProfilePreference;

    invoke-virtual {v2}, Lcom/mediatek/audioprofile/AudioProfilePreference;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 186
    iget-object v0, p0, Lcom/mediatek/audioprofile/AudioProfilePreference$1;->this$0:Lcom/mediatek/audioprofile/AudioProfilePreference;

    #getter for: Lcom/mediatek/audioprofile/AudioProfilePreference;->mCheckboxButton:Landroid/widget/RadioButton;
    invoke-static {v0}, Lcom/mediatek/audioprofile/AudioProfilePreference;->access$100(Lcom/mediatek/audioprofile/AudioProfilePreference;)Landroid/widget/RadioButton;

    move-result-object v0

    invoke-static {}, Lcom/mediatek/audioprofile/AudioProfilePreference;->access$000()Landroid/widget/CompoundButton;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 187
    invoke-static {}, Lcom/mediatek/audioprofile/AudioProfilePreference;->access$000()Landroid/widget/CompoundButton;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 188
    invoke-static {}, Lcom/mediatek/audioprofile/AudioProfilePreference;->access$000()Landroid/widget/CompoundButton;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 190
    iget-object v0, p0, Lcom/mediatek/audioprofile/AudioProfilePreference$1;->this$0:Lcom/mediatek/audioprofile/AudioProfilePreference;

    #getter for: Lcom/mediatek/audioprofile/AudioProfilePreference;->mCheckboxButton:Landroid/widget/RadioButton;
    invoke-static {v0}, Lcom/mediatek/audioprofile/AudioProfilePreference;->access$100(Lcom/mediatek/audioprofile/AudioProfilePreference;)Landroid/widget/RadioButton;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 191
    iget-object v0, p0, Lcom/mediatek/audioprofile/AudioProfilePreference$1;->this$0:Lcom/mediatek/audioprofile/AudioProfilePreference;

    #getter for: Lcom/mediatek/audioprofile/AudioProfilePreference;->mCheckboxButton:Landroid/widget/RadioButton;
    invoke-static {v0}, Lcom/mediatek/audioprofile/AudioProfilePreference;->access$100(Lcom/mediatek/audioprofile/AudioProfilePreference;)Landroid/widget/RadioButton;

    move-result-object v0

    invoke-static {v0}, Lcom/mediatek/audioprofile/AudioProfilePreference;->access$002(Landroid/widget/CompoundButton;)Landroid/widget/CompoundButton;

    .line 192
    iget-object v0, p0, Lcom/mediatek/audioprofile/AudioProfilePreference$1;->this$0:Lcom/mediatek/audioprofile/AudioProfilePreference;

    #getter for: Lcom/mediatek/audioprofile/AudioProfilePreference;->mProfileManager:Lcom/mediatek/audioprofile/AudioProfileManager;
    invoke-static {v0}, Lcom/mediatek/audioprofile/AudioProfilePreference;->access$300(Lcom/mediatek/audioprofile/AudioProfilePreference;)Lcom/mediatek/audioprofile/AudioProfileManager;

    move-result-object v0

    iget-object v1, p0, Lcom/mediatek/audioprofile/AudioProfilePreference$1;->this$0:Lcom/mediatek/audioprofile/AudioProfilePreference;

    #getter for: Lcom/mediatek/audioprofile/AudioProfilePreference;->mKey:Ljava/lang/String;
    invoke-static {v1}, Lcom/mediatek/audioprofile/AudioProfilePreference;->access$200(Lcom/mediatek/audioprofile/AudioProfilePreference;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mediatek/audioprofile/AudioProfileManager;->setActiveProfile(Ljava/lang/String;)V

    .line 198
    :cond_0
    :goto_0
    return-void

    .line 195
    :cond_1
    const-string v0, "Settings/AudioP"

    const-string v1, "AudioProfilePreference:Click the active profile, do nothing return"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
