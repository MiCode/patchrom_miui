.class Lcom/android/settings/MiuiApnEditor$2;
.super Ljava/lang/Object;
.source "MiuiApnEditor.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/MiuiApnEditor;->checkToSave()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/MiuiApnEditor;


# direct methods
.method constructor <init>(Lcom/android/settings/MiuiApnEditor;)V
    .locals 0
    .parameter

    .prologue
    .line 49
    iput-object p1, p0, Lcom/android/settings/MiuiApnEditor$2;->this$0:Lcom/android/settings/MiuiApnEditor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 52
    iget-object v0, p0, Lcom/android/settings/MiuiApnEditor$2;->this$0:Lcom/android/settings/MiuiApnEditor;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/settings/MiuiApnEditor;->validateAndSave(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 53
    iget-object v0, p0, Lcom/android/settings/MiuiApnEditor$2;->this$0:Lcom/android/settings/MiuiApnEditor;

    invoke-virtual {v0}, Lcom/android/settings/MiuiApnEditor;->finish()V

    .line 55
    :cond_0
    return-void
.end method
