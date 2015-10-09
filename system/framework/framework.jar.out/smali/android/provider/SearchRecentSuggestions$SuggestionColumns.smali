.class Landroid/provider/SearchRecentSuggestions$SuggestionColumns;
.super Ljava/lang/Object;
.source "SearchRecentSuggestions.java"

# interfaces
.implements Landroid/provider/BaseColumns;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/provider/SearchRecentSuggestions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SuggestionColumns"
.end annotation


# static fields
.field public static final DATE:Ljava/lang/String; = "date"

.field public static final DISPLAY1:Ljava/lang/String; = "display1"

.field public static final DISPLAY2:Ljava/lang/String; = "display2"

.field public static final QUERY:Ljava/lang/String; = "query"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
