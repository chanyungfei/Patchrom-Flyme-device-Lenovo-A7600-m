.class public Lcom/flyme/deviceoriginalsettings/inputmethod/InputMethodAndSubtypeEnablerActivity;
.super Lcom/flyme/deviceoriginalsettings/SettingsActivity;
.source "InputMethodAndSubtypeEnablerActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/flyme/deviceoriginalsettings/SettingsActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public getIntent()Landroid/content/Intent;
    .locals 3

    .prologue
    .line 45
    new-instance v0, Landroid/content/Intent;

    invoke-super {p0}, Lcom/flyme/deviceoriginalsettings/SettingsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 46
    .local v0, "modIntent":Landroid/content/Intent;
    const-string v1, ":settings:show_fragment"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 47
    const-string v1, ":settings:show_fragment"

    const-class v2, Lcom/flyme/deviceoriginalsettings/inputmethod/InputMethodAndSubtypeEnabler;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 49
    :cond_0
    return-object v0
.end method

.method protected isValidFragment(Ljava/lang/String;)Z
    .locals 1
    .param p1, "fragmentName"    # Ljava/lang/String;

    .prologue
    .line 54
    const-class v0, Lcom/flyme/deviceoriginalsettings/inputmethod/InputMethodAndSubtypeEnabler;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedState"    # Landroid/os/Bundle;

    .prologue
    const/4 v1, 0x1

    .line 29
    invoke-super {p0, p1}, Lcom/flyme/deviceoriginalsettings/SettingsActivity;->onCreate(Landroid/os/Bundle;)V

    .line 30
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/inputmethod/InputMethodAndSubtypeEnablerActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 31
    .local v0, "actionBar":Landroid/app/ActionBar;
    if-eqz v0, :cond_0

    .line 32
    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 33
    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setHomeButtonEnabled(Z)V

    .line 35
    :cond_0
    return-void
.end method

.method public onNavigateUp()Z
    .locals 1

    .prologue
    .line 39
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/inputmethod/InputMethodAndSubtypeEnablerActivity;->finish()V

    .line 40
    const/4 v0, 0x1

    return v0
.end method
