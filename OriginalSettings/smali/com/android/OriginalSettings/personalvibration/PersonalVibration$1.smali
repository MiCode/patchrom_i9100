.class Lcom/android/settings/personalvibration/PersonalVibration$1;
.super Ljava/lang/Object;
.source "PersonalVibration.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/personalvibration/PersonalVibration;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/personalvibration/PersonalVibration;

.field final synthetic val$imm:Landroid/view/inputmethod/InputMethodManager;


# direct methods
.method constructor <init>(Lcom/android/settings/personalvibration/PersonalVibration;Landroid/view/inputmethod/InputMethodManager;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 318
    iput-object p1, p0, Lcom/android/settings/personalvibration/PersonalVibration$1;->this$0:Lcom/android/settings/personalvibration/PersonalVibration;

    iput-object p2, p0, Lcom/android/settings/personalvibration/PersonalVibration$1;->val$imm:Landroid/view/inputmethod/InputMethodManager;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 8
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 321
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 322
    .local v3, values:Landroid/content/ContentValues;
    iget-object v4, p0, Lcom/android/settings/personalvibration/PersonalVibration$1;->this$0:Lcom/android/settings/personalvibration/PersonalVibration;

    #getter for: Lcom/android/settings/personalvibration/PersonalVibration;->mEditPattern:Landroid/widget/TextView;
    invoke-static {v4}, Lcom/android/settings/personalvibration/PersonalVibration;->access$100(Lcom/android/settings/personalvibration/PersonalVibration;)Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 323
    .local v1, mPatternName:Ljava/lang/String;
    const-string v4, "\n"

    const-string v5, " "

    invoke-virtual {v1, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "\r"

    const-string v6, " "

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .line 324
    const-string v4, "vibration_name"

    invoke-virtual {v3, v4, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 325
    const-string v4, "vibration_pattern"

    iget-object v5, p0, Lcom/android/settings/personalvibration/PersonalVibration$1;->this$0:Lcom/android/settings/personalvibration/PersonalVibration;

    iget-object v5, v5, Lcom/android/settings/personalvibration/PersonalVibration;->backView:Lcom/android/settings/personalvibration/BackgroundView;

    invoke-virtual {v5}, Lcom/android/settings/personalvibration/BackgroundView;->getPatternString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 326
    const-string v4, "vibration_type"

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 328
    iget-object v4, p0, Lcom/android/settings/personalvibration/PersonalVibration$1;->this$0:Lcom/android/settings/personalvibration/PersonalVibration;

    invoke-virtual {v4}, Lcom/android/settings/personalvibration/PersonalVibration;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "content://com.android.settings.personalvibration.PersonalVibrationProvider"

    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v4, v5, v3}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v2

    .line 332
    .local v2, uri:Landroid/net/Uri;
    const-string v4, "PersonalVibration"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "uri : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " , mPatternName = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 333
    const-string v4, "PersonalVibration"

    const-string v5, "OK was clicked, the pattern saved sucessfully"

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 337
    iget-object v4, p0, Lcom/android/settings/personalvibration/PersonalVibration$1;->this$0:Lcom/android/settings/personalvibration/PersonalVibration;

    #getter for: Lcom/android/settings/personalvibration/PersonalVibration;->mFromContact:Ljava/lang/Boolean;
    invoke-static {v4}, Lcom/android/settings/personalvibration/PersonalVibration;->access$200(Lcom/android/settings/personalvibration/PersonalVibration;)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-nez v4, :cond_0

    .line 338
    const-string v4, "PersonalVibration"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onClick : OK button is clicked before uri is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/settings/personalvibration/PersonalVibration$1;->this$0:Lcom/android/settings/personalvibration/PersonalVibration;

    invoke-virtual {v6}, Lcom/android/settings/personalvibration/PersonalVibration;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "default_vibration_pattern"

    invoke-static {v6, v7}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 339
    iget-object v4, p0, Lcom/android/settings/personalvibration/PersonalVibration$1;->this$0:Lcom/android/settings/personalvibration/PersonalVibration;

    invoke-virtual {v4}, Lcom/android/settings/personalvibration/PersonalVibration;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "default_vibration_pattern"

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 342
    :cond_0
    iget-object v4, p0, Lcom/android/settings/personalvibration/PersonalVibration$1;->this$0:Lcom/android/settings/personalvibration/PersonalVibration;

    const/4 v5, 0x0

    iput-object v5, v4, Lcom/android/settings/personalvibration/PersonalVibration;->mDialog:Landroid/app/AlertDialog;

    .line 344
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 345
    .local v0, intent:Landroid/content/Intent;
    invoke-virtual {v0, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 346
    const-string v4, "savedVibrationPatternName"

    invoke-virtual {v0, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 347
    const-string v4, "savedVibrationPattern"

    iget-object v5, p0, Lcom/android/settings/personalvibration/PersonalVibration$1;->this$0:Lcom/android/settings/personalvibration/PersonalVibration;

    iget-object v5, v5, Lcom/android/settings/personalvibration/PersonalVibration;->backView:Lcom/android/settings/personalvibration/BackgroundView;

    invoke-virtual {v5}, Lcom/android/settings/personalvibration/BackgroundView;->getPatternString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 348
    iget-object v4, p0, Lcom/android/settings/personalvibration/PersonalVibration$1;->this$0:Lcom/android/settings/personalvibration/PersonalVibration;

    const/4 v5, -0x1

    invoke-virtual {v4, v5, v0}, Lcom/android/settings/personalvibration/PersonalVibration;->setResult(ILandroid/content/Intent;)V

    .line 349
    iget-object v4, p0, Lcom/android/settings/personalvibration/PersonalVibration$1;->val$imm:Landroid/view/inputmethod/InputMethodManager;

    iget-object v5, p0, Lcom/android/settings/personalvibration/PersonalVibration$1;->this$0:Lcom/android/settings/personalvibration/PersonalVibration;

    #getter for: Lcom/android/settings/personalvibration/PersonalVibration;->mEditPattern:Landroid/widget/TextView;
    invoke-static {v5}, Lcom/android/settings/personalvibration/PersonalVibration;->access$100(Lcom/android/settings/personalvibration/PersonalVibration;)Landroid/widget/TextView;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/TextView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 351
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 352
    iget-object v4, p0, Lcom/android/settings/personalvibration/PersonalVibration$1;->this$0:Lcom/android/settings/personalvibration/PersonalVibration;

    new-instance v5, Lcom/android/settings/personalvibration/PersonalVibration$1$1;

    invoke-direct {v5, p0}, Lcom/android/settings/personalvibration/PersonalVibration$1$1;-><init>(Lcom/android/settings/personalvibration/PersonalVibration$1;)V

    invoke-virtual {v4, v5}, Lcom/android/settings/personalvibration/PersonalVibration;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 358
    return-void
.end method
