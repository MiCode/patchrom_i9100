.class public final Lcom/google/android/mms/SecurityTelephony$Intents;
.super Ljava/lang/Object;
.source "SecurityTelephony.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/mms/SecurityTelephony;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Intents"
.end annotation


# static fields
.field public static final EXTRA_PLMN:Ljava/lang/String; = "plmn"

.field public static final EXTRA_SHOW_PLMN:Ljava/lang/String; = "showPlmn"

.field public static final EXTRA_SHOW_SPN:Ljava/lang/String; = "showSpn"

.field public static final EXTRA_SPN:Ljava/lang/String; = "spn"

.field public static final SECRET_CODE_ACTION:Ljava/lang/String; = "android.provider.Telephony.SECRET_CODE"

.field public static final SPN_STRINGS_UPDATED_ACTION:Ljava/lang/String; = "android.provider.Telephony.SPN_STRINGS_UPDATED"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 2142
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 2144
    return-void
.end method
