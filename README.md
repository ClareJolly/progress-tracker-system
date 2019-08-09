# <a name="top"></a>![Progress Tracker](/images/on-page/img-h-_0005_Progress-Tracker.png)

Tracker system I created to allow me to update with achievements and tag with goals

---

## Set up

add a `temp` folder in the root

`yarn` to get the dependencies

---

### How to customise

At the moment this is using vscode snippets to allow me to tag achievements with different goals so you can make updates in the `.vscode/useful-code-snippets` file

---

### How to tag up text

I use VS code to help with tagging or you can just add the relevant text.  The scripts that run look for this particular tag text pattern so if you update the pattern, the scripts need updating too

---

#### Adding a goal

![adding-goal](images/adding-a-goal.png)

![goal-added](images/goal-added.png)

---

#### Tagging some feedback

![add-feedback](images/adding-feedback.png)

![feedback-added](images/feedback-added.png)

---

#### Tagging some personal development observations

![personal-added](images/adding-personal.png)

![personal-added](images/personal-added.png)

---

#### Adding useful info

![useful-info-added](images/adding-useful.png)

![useful-info](images/useful-added.png)

---

#### Adding training

![adding-training](images/adding-training.png)

![added-training](images/training-added.png)

---

### How to collate the tags

`yarn updateFiles` will scan through all the files and collate the various info that you have tagged

`yarn build` will update the files but also push to github

The files will appear in the `progress-main.md` file all linked up and the weekly reports will appear in a list in their appropriate month

---

### Links

[Link to progress main page](/progress-main.md)
