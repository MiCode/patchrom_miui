.class public Lcom/android/settings/inputmethod/UserDictionaryLocalePicker;
.super Lcom/android/settings/MiuiLocalePicker;
.source "UserDictionaryLocalePicker.java"


# direct methods
.method public constructor <init>(Lcom/android/settings/inputmethod/UserDictionaryAddWordFragment;)V
    .locals 0
    .parameter "parent"

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/android/settings/MiuiLocalePicker;-><init>()V

    .line 28
    invoke-virtual {p0, p1}, Lcom/android/settings/inputmethod/UserDictionaryLocalePicker;->setLocaleSelectionListener(Lcom/android/internal/app/LocalePicker$LocaleSelectionListener;)V

    .line 29
    return-void
.end method
