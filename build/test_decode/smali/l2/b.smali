.class public final Ll2/b;
.super Lorg/mozilla/javascript/ScriptableObject;
.source "SourceFile"


# instance fields
.field public b:Landroid/content/Context;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/mozilla/javascript/ScriptableObject;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .annotation runtime Lorg/mozilla/javascript/annotations/JSConstructor;
    .end annotation

    invoke-direct {p0}, Lorg/mozilla/javascript/ScriptableObject;-><init>()V

    iput-object p1, p0, Ll2/b;->b:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public getBoolean(Ljava/lang/String;Z)Z
    .locals 3
    .annotation runtime Lorg/mozilla/javascript/annotations/JSFunction;
        value = "getBoolean"
    .end annotation

    iget-object v0, p0, Ll2/b;->b:Landroid/content/Context;

    const-string v1, "variable_scripts_data"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    return p1
.end method

.method public final getClassName()Ljava/lang/String;
    .locals 1

    const-string v0, "Data"

    return-object v0
.end method

.method public getNumber(Ljava/lang/String;D)D
    .locals 3
    .annotation runtime Lorg/mozilla/javascript/annotations/JSFunction;
        value = "getNumber"
    .end annotation

    iget-object v0, p0, Ll2/b;->b:Landroid/content/Context;

    const-string v1, "variable_scripts_data"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    double-to-float p2, p2

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result p1

    float-to-double p1, p1

    return-wide p1
.end method

.method public getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .annotation runtime Lorg/mozilla/javascript/annotations/JSFunction;
        value = "getString"
    .end annotation

    iget-object v0, p0, Ll2/b;->b:Landroid/content/Context;

    const-string v1, "variable_scripts_data"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public remove(Ljava/lang/String;)V
    .locals 3
    .annotation runtime Lorg/mozilla/javascript/annotations/JSFunction;
        value = "remove"
    .end annotation

    iget-object v0, p0, Ll2/b;->b:Landroid/content/Context;

    const-string v1, "variable_scripts_data"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public saveBoolean(Ljava/lang/String;Z)V
    .locals 3
    .annotation runtime Lorg/mozilla/javascript/annotations/JSFunction;
        value = "saveBoolean"
    .end annotation

    iget-object v0, p0, Ll2/b;->b:Landroid/content/Context;

    const-string v1, "variable_scripts_data"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public saveNumber(Ljava/lang/String;D)V
    .locals 3
    .annotation runtime Lorg/mozilla/javascript/annotations/JSFunction;
        value = "saveNumber"
    .end annotation

    iget-object v0, p0, Ll2/b;->b:Landroid/content/Context;

    const-string v1, "variable_scripts_data"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    double-to-float p2, p2

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public saveString(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .annotation runtime Lorg/mozilla/javascript/annotations/JSFunction;
        value = "saveString"
    .end annotation

    iget-object v0, p0, Ll2/b;->b:Landroid/content/Context;

    const-string v1, "variable_scripts_data"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method
