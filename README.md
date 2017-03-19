# README

This app is meant to help with the reservations of facilities aimed to the practice of sports.

The app must handle several entities (City corporations), every one of them will have several fields for
different sports (Football, paddle, tennis, etc). Each Field will have one schedule and one
 DefaultScheduleConfig for each week.

At the same time, each entity will have one advertiser (A sport related company whose publicity will be shown
when loading the schedule), and several contacts.

Considerations:

    - Schedule will have 48 slots (integers) refering to the 24 hours of a day in fractions of 30 minutes.
    Each one may have different values according to:

        - nill -> unassigned
        - 0 -> Unavailable
        - 1 -> Free to choose
        - 2 -> Already reserved for another user
        - 3 -> Blocked by admin or mod (maintenance, other uses, etc)

    - Each row in the Schedule will represent a day, when a day pass, a roll will be erased and a new one will
    appear. Then plan is that this table always have only 22 rows: past week, today and 2 week up front.
     (Circular queue)

    - Each entity will have a mod in charge of assigning timetables, availability and resolving issues
     in their scope

    - Each field may have different opening hours and different tariffs depending on the hour and the day
    of the week. And due to UX issues, we want to make mods easy their work and we will have default configs.

    - There will be an "Appintments" model where we will save the info of reservations, method of payment,
    amount, field and entity -yet to be created-.

    - For users I've used devise, but direct login through Facebook and Google shall be implemented.

    - Stripe and Paypal will be the options for payments.

* ...
