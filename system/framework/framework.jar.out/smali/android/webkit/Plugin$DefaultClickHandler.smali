.class Landroid/webkit/Plugin$DefaultClickHandler;
.super Ljava/lang/Object;
.source "Plugin.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/webkit/Plugin$PreferencesClickHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/webkit/Plugin;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DefaultClickHandler"
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private mDialog:Landroid/app/AlertDialog;

.field final synthetic this$0:Landroid/webkit/Plugin;


# direct methods
.method private constructor <init>(Landroid/webkit/Plugin;)V
    .locals 0

    .prologue
    .line 195
    iput-object p1, p0, Landroid/webkit/Plugin$DefaultClickHandler;->this$0:Landroid/webkit/Plugin;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/webkit/Plugin;Landroid/webkit/Plugin$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/webkit/Plugin;
    .param p2, "x1"    # Landroid/webkit/Plugin$1;

    .prologue
    .line 195
    invoke-direct {p0, p1}, Landroid/webkit/Plugin$DefaultClickHandler;-><init>(Landroid/webkit/Plugin;)V

    return-void
.end method


# virtual methods
.method public handleClickEvent(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 202
    iget-object v0, p0, Landroid/webkit/Plugin$DefaultClickHandler;->mDialog:Landroid/app/AlertDialog;

    if-nez v0, :cond_0

    .line 203
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Landroid/webkit/Plugin$DefaultClickHandler;->this$0:Landroid/webkit/Plugin;

    # getter for: Landroid/webkit/Plugin;->mName:Ljava/lang/String;
    invoke-static {v1}, Landroid/webkit/Plugin;->access$200(Landroid/webkit/Plugin;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    iget-object v1, p0, Landroid/webkit/Plugin$DefaultClickHandler;->this$0:Landroid/webkit/Plugin;

    # getter for: Landroid/webkit/Plugin;->mDescription:Ljava/lang/String;
    invoke-static {v1}, Landroid/webkit/Plugin;->access$100(Landroid/webkit/Plugin;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    sget v1, Lcom/android/internal/R$string;->ok:I

    invoke-virtual {v0, v1, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Landroid/webkit/Plugin$DefaultClickHandler;->mDialog:Landroid/app/AlertDialog;

    .line 210
    :cond_0
    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 218
    iget-object v0, p0, Landroid/webkit/Plugin$DefaultClickHandler;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 219
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/webkit/Plugin$DefaultClickHandler;->mDialog:Landroid/app/AlertDialog;

    .line 220
    return-void
.end method
