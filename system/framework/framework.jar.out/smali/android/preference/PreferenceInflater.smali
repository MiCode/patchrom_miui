.class Landroid/preference/PreferenceInflater;
.super Landroid/preference/GenericInflater;
.source "PreferenceInflater.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/preference/GenericInflater",
        "<",
        "Landroid/preference/Preference;",
        "Landroid/preference/PreferenceGroup;",
        ">;"
    }
.end annotation


# static fields
.field private static final EXTRA_TAG_NAME:Ljava/lang/String; = "extra"

.field private static final INTENT_TAG_NAME:Ljava/lang/String; = "intent"

.field private static final TAG:Ljava/lang/String; = "PreferenceInflater"


# instance fields
.field private mPreferenceManager:Landroid/preference/PreferenceManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/preference/PreferenceManager;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "preferenceManager"    # Landroid/preference/PreferenceManager;

    .prologue
    .line 49
    invoke-direct {p0, p1}, Landroid/preference/GenericInflater;-><init>(Landroid/content/Context;)V

    .line 50
    invoke-direct {p0, p2}, Landroid/preference/PreferenceInflater;->init(Landroid/preference/PreferenceManager;)V

    .line 51
    return-void
.end method

.method constructor <init>(Landroid/preference/GenericInflater;Landroid/preference/PreferenceManager;Landroid/content/Context;)V
    .locals 0
    .param p2, "preferenceManager"    # Landroid/preference/PreferenceManager;
    .param p3, "newContext"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/preference/GenericInflater",
            "<",
            "Landroid/preference/Preference;",
            "Landroid/preference/PreferenceGroup;",
            ">;",
            "Landroid/preference/PreferenceManager;",
            "Landroid/content/Context;",
            ")V"
        }
    .end annotation

    .prologue
    .line 54
    .local p1, "original":Landroid/preference/GenericInflater;, "Landroid/preference/GenericInflater<Landroid/preference/Preference;Landroid/preference/PreferenceGroup;>;"
    invoke-direct {p0, p1, p3}, Landroid/preference/GenericInflater;-><init>(Landroid/preference/GenericInflater;Landroid/content/Context;)V

    .line 55
    invoke-direct {p0, p2}, Landroid/preference/PreferenceInflater;->init(Landroid/preference/PreferenceManager;)V

    .line 56
    return-void
.end method

.method private init(Landroid/preference/PreferenceManager;)V
    .locals 1
    .param p1, "preferenceManager"    # Landroid/preference/PreferenceManager;

    .prologue
    .line 64
    iput-object p1, p0, Landroid/preference/PreferenceInflater;->mPreferenceManager:Landroid/preference/PreferenceManager;

    .line 65
    const-string v0, "android.preference."

    invoke-virtual {p0, v0}, Landroid/preference/PreferenceInflater;->setDefaultPackage(Ljava/lang/String;)V

    .line 66
    return-void
.end method


# virtual methods
.method public cloneInContext(Landroid/content/Context;)Landroid/preference/GenericInflater;
    .locals 2
    .param p1, "newContext"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Landroid/preference/GenericInflater",
            "<",
            "Landroid/preference/Preference;",
            "Landroid/preference/PreferenceGroup;",
            ">;"
        }
    .end annotation

    .prologue
    .line 60
    new-instance v0, Landroid/preference/PreferenceInflater;

    iget-object v1, p0, Landroid/preference/PreferenceInflater;->mPreferenceManager:Landroid/preference/PreferenceManager;

    invoke-direct {v0, p0, v1, p1}, Landroid/preference/PreferenceInflater;-><init>(Landroid/preference/GenericInflater;Landroid/preference/PreferenceManager;Landroid/content/Context;)V

    return-object v0
.end method

.method protected onCreateCustomFromTag(Lorg/xmlpull/v1/XmlPullParser;Landroid/preference/Preference;Landroid/util/AttributeSet;)Z
    .locals 8
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p2, "parentPreference"    # Landroid/preference/Preference;
    .param p3, "attrs"    # Landroid/util/AttributeSet;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    .line 71
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    .line 73
    .local v3, "tag":Ljava/lang/String;
    const-string v5, "intent"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 74
    const/4 v2, 0x0

    .line 77
    .local v2, "intent":Landroid/content/Intent;
    :try_start_0
    invoke-virtual {p0}, Landroid/preference/PreferenceInflater;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-static {v5, p1, p3}, Landroid/content/Intent;->parseIntent(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 85
    if-eqz v2, :cond_0

    .line 86
    invoke-virtual {p2, v2}, Landroid/preference/Preference;->setIntent(Landroid/content/Intent;)V

    .line 104
    .end local v2    # "intent":Landroid/content/Intent;
    :cond_0
    :goto_0
    return v4

    .line 78
    .restart local v2    # "intent":Landroid/content/Intent;
    :catch_0
    move-exception v0

    .line 79
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Lorg/xmlpull/v1/XmlPullParserException;

    const-string v4, "Error parsing preference"

    invoke-direct {v1, v4}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    .line 81
    .local v1, "ex":Lorg/xmlpull/v1/XmlPullParserException;
    invoke-virtual {v1, v0}, Lorg/xmlpull/v1/XmlPullParserException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 82
    throw v1

    .line 90
    .end local v0    # "e":Ljava/io/IOException;
    .end local v1    # "ex":Lorg/xmlpull/v1/XmlPullParserException;
    .end local v2    # "intent":Landroid/content/Intent;
    :cond_1
    const-string v5, "extra"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 91
    invoke-virtual {p0}, Landroid/preference/PreferenceInflater;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const-string v6, "extra"

    invoke-virtual {p2}, Landroid/preference/Preference;->getExtras()Landroid/os/Bundle;

    move-result-object v7

    invoke-virtual {v5, v6, p3, v7}, Landroid/content/res/Resources;->parseBundleExtra(Ljava/lang/String;Landroid/util/AttributeSet;Landroid/os/Bundle;)V

    .line 94
    :try_start_1
    invoke-static {p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 95
    :catch_1
    move-exception v0

    .line 96
    .restart local v0    # "e":Ljava/io/IOException;
    new-instance v1, Lorg/xmlpull/v1/XmlPullParserException;

    const-string v4, "Error parsing preference"

    invoke-direct {v1, v4}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    .line 98
    .restart local v1    # "ex":Lorg/xmlpull/v1/XmlPullParserException;
    invoke-virtual {v1, v0}, Lorg/xmlpull/v1/XmlPullParserException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 99
    throw v1

    .line 104
    .end local v0    # "e":Ljava/io/IOException;
    .end local v1    # "ex":Lorg/xmlpull/v1/XmlPullParserException;
    :cond_2
    const/4 v4, 0x0

    goto :goto_0
.end method

.method protected bridge synthetic onCreateCustomFromTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/Object;Landroid/util/AttributeSet;)Z
    .locals 1
    .param p1, "x0"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p2, "x1"    # Ljava/lang/Object;
    .param p3, "x2"    # Landroid/util/AttributeSet;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .prologue
    .line 41
    check-cast p2, Landroid/preference/Preference;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2, p3}, Landroid/preference/PreferenceInflater;->onCreateCustomFromTag(Lorg/xmlpull/v1/XmlPullParser;Landroid/preference/Preference;Landroid/util/AttributeSet;)Z

    move-result v0

    return v0
.end method

.method protected bridge synthetic onMergeRoots(Landroid/preference/GenericInflater$Parent;ZLandroid/preference/GenericInflater$Parent;)Landroid/preference/GenericInflater$Parent;
    .locals 1
    .param p1, "x0"    # Landroid/preference/GenericInflater$Parent;
    .param p2, "x1"    # Z
    .param p3, "x2"    # Landroid/preference/GenericInflater$Parent;

    .prologue
    .line 41
    check-cast p1, Landroid/preference/PreferenceGroup;

    .end local p1    # "x0":Landroid/preference/GenericInflater$Parent;
    check-cast p3, Landroid/preference/PreferenceGroup;

    .end local p3    # "x2":Landroid/preference/GenericInflater$Parent;
    invoke-virtual {p0, p1, p2, p3}, Landroid/preference/PreferenceInflater;->onMergeRoots(Landroid/preference/PreferenceGroup;ZLandroid/preference/PreferenceGroup;)Landroid/preference/PreferenceGroup;

    move-result-object v0

    return-object v0
.end method

.method protected onMergeRoots(Landroid/preference/PreferenceGroup;ZLandroid/preference/PreferenceGroup;)Landroid/preference/PreferenceGroup;
    .locals 1
    .param p1, "givenRoot"    # Landroid/preference/PreferenceGroup;
    .param p2, "attachToGivenRoot"    # Z
    .param p3, "xmlRoot"    # Landroid/preference/PreferenceGroup;

    .prologue
    .line 112
    if-nez p1, :cond_0

    .line 113
    iget-object v0, p0, Landroid/preference/PreferenceInflater;->mPreferenceManager:Landroid/preference/PreferenceManager;

    invoke-virtual {p3, v0}, Landroid/preference/PreferenceGroup;->onAttachedToHierarchy(Landroid/preference/PreferenceManager;)V

    .line 116
    .end local p3    # "xmlRoot":Landroid/preference/PreferenceGroup;
    :goto_0
    return-object p3

    .restart local p3    # "xmlRoot":Landroid/preference/PreferenceGroup;
    :cond_0
    move-object p3, p1

    goto :goto_0
.end method
