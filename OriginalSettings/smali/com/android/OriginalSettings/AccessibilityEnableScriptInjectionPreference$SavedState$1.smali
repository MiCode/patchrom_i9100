.class final Lcom/android/OriginalSettings/AccessibilityEnableScriptInjectionPreference$SavedState$1;
.super Ljava/lang/Object;
.source "AccessibilityEnableScriptInjectionPreference.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/OriginalSettings/AccessibilityEnableScriptInjectionPreference$SavedState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/android/OriginalSettings/AccessibilityEnableScriptInjectionPreference$SavedState;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 165
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/android/OriginalSettings/AccessibilityEnableScriptInjectionPreference$SavedState;
    .locals 1
    .parameter "in"

    .prologue
    .line 167
    new-instance v0, Lcom/android/OriginalSettings/AccessibilityEnableScriptInjectionPreference$SavedState;

    invoke-direct {v0, p1}, Lcom/android/OriginalSettings/AccessibilityEnableScriptInjectionPreference$SavedState;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 165
    invoke-virtual {p0, p1}, Lcom/android/OriginalSettings/AccessibilityEnableScriptInjectionPreference$SavedState$1;->createFromParcel(Landroid/os/Parcel;)Lcom/android/OriginalSettings/AccessibilityEnableScriptInjectionPreference$SavedState;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/android/OriginalSettings/AccessibilityEnableScriptInjectionPreference$SavedState;
    .locals 1
    .parameter "size"

    .prologue
    .line 171
    new-array v0, p1, [Lcom/android/OriginalSettings/AccessibilityEnableScriptInjectionPreference$SavedState;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 165
    invoke-virtual {p0, p1}, Lcom/android/OriginalSettings/AccessibilityEnableScriptInjectionPreference$SavedState$1;->newArray(I)[Lcom/android/OriginalSettings/AccessibilityEnableScriptInjectionPreference$SavedState;

    move-result-object v0

    return-object v0
.end method
