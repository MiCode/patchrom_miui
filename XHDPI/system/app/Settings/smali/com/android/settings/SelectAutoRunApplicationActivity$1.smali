.class Lcom/android/settings/SelectAutoRunApplicationActivity$1;
.super Ljava/lang/Object;
.source "SelectAutoRunApplicationActivity.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/SelectAutoRunApplicationActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Landroid/content/pm/ApplicationInfo;",
        ">;"
    }
.end annotation


# instance fields
.field private collator:Ljava/text/Collator;

.field final synthetic this$0:Lcom/android/settings/SelectAutoRunApplicationActivity;


# direct methods
.method constructor <init>(Lcom/android/settings/SelectAutoRunApplicationActivity;)V
    .locals 1
    .parameter

    .prologue
    .line 43
    iput-object p1, p0, Lcom/android/settings/SelectAutoRunApplicationActivity$1;->this$0:Lcom/android/settings/SelectAutoRunApplicationActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    invoke-static {}, Ljava/text/Collator;->getInstance()Ljava/text/Collator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/SelectAutoRunApplicationActivity$1;->collator:Ljava/text/Collator;

    return-void
.end method


# virtual methods
.method public compare(Landroid/content/pm/ApplicationInfo;Landroid/content/pm/ApplicationInfo;)I
    .locals 4
    .parameter "obj1"
    .parameter "obj2"

    .prologue
    .line 47
    iget-object v2, p0, Lcom/android/settings/SelectAutoRunApplicationActivity$1;->collator:Ljava/text/Collator;

    iget-object v0, p0, Lcom/android/settings/SelectAutoRunApplicationActivity$1;->this$0:Lcom/android/settings/SelectAutoRunApplicationActivity;

    #getter for: Lcom/android/settings/SelectAutoRunApplicationActivity;->mPkgLabelPy:Ljava/util/Map;
    invoke-static {v0}, Lcom/android/settings/SelectAutoRunApplicationActivity;->access$000(Lcom/android/settings/SelectAutoRunApplicationActivity;)Ljava/util/Map;

    move-result-object v0

    iget-object v1, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/android/settings/SelectAutoRunApplicationActivity$1;->this$0:Lcom/android/settings/SelectAutoRunApplicationActivity;

    #getter for: Lcom/android/settings/SelectAutoRunApplicationActivity;->mPkgLabelPy:Ljava/util/Map;
    invoke-static {v1}, Lcom/android/settings/SelectAutoRunApplicationActivity;->access$000(Lcom/android/settings/SelectAutoRunApplicationActivity;)Ljava/util/Map;

    move-result-object v1

    iget-object v3, p2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v2, v0, v1}, Ljava/text/Collator;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 43
    check-cast p1, Landroid/content/pm/ApplicationInfo;

    .end local p1
    check-cast p2, Landroid/content/pm/ApplicationInfo;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/android/settings/SelectAutoRunApplicationActivity$1;->compare(Landroid/content/pm/ApplicationInfo;Landroid/content/pm/ApplicationInfo;)I

    move-result v0

    return v0
.end method
