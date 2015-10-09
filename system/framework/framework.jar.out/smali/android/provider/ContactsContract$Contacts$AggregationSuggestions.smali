.class public final Landroid/provider/ContactsContract$Contacts$AggregationSuggestions;
.super Ljava/lang/Object;
.source "ContactsContract.java"

# interfaces
.implements Landroid/provider/BaseColumns;
.implements Landroid/provider/ContactsContract$ContactOptionsColumns;
.implements Landroid/provider/ContactsContract$ContactStatusColumns;
.implements Landroid/provider/ContactsContract$ContactsColumns;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/provider/ContactsContract$Contacts;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "AggregationSuggestions"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/provider/ContactsContract$Contacts$AggregationSuggestions$Builder;
    }
.end annotation


# static fields
.field public static final CONTENT_DIRECTORY:Ljava/lang/String; = "suggestions"

.field public static final PARAMETER_MATCH_EMAIL:Ljava/lang/String; = "email"

.field public static final PARAMETER_MATCH_NAME:Ljava/lang/String; = "name"

.field public static final PARAMETER_MATCH_NICKNAME:Ljava/lang/String; = "nickname"

.field public static final PARAMETER_MATCH_PHONE:Ljava/lang/String; = "phone"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 1758
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final builder()Landroid/provider/ContactsContract$Contacts$AggregationSuggestions$Builder;
    .locals 1

    .prologue
    .line 1864
    new-instance v0, Landroid/provider/ContactsContract$Contacts$AggregationSuggestions$Builder;

    invoke-direct {v0}, Landroid/provider/ContactsContract$Contacts$AggregationSuggestions$Builder;-><init>()V

    return-object v0
.end method
