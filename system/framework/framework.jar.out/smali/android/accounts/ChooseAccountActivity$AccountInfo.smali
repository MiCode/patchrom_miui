.class Landroid/accounts/ChooseAccountActivity$AccountInfo;
.super Ljava/lang/Object;
.source "ChooseAccountActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/accounts/ChooseAccountActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AccountInfo"
.end annotation


# instance fields
.field final drawable:Landroid/graphics/drawable/Drawable;

.field final name:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "drawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 144
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 145
    iput-object p1, p0, Landroid/accounts/ChooseAccountActivity$AccountInfo;->name:Ljava/lang/String;

    .line 146
    iput-object p2, p0, Landroid/accounts/ChooseAccountActivity$AccountInfo;->drawable:Landroid/graphics/drawable/Drawable;

    .line 147
    return-void
.end method
