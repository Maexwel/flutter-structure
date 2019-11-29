# Flutter structure project
## Goal
The goal of this project is to provide à High-level and customizable structure of Flutter app.
Here are the main principles bootstraped :
* Widget structure
* State Management structure and configuration
* Routing structure
* Remote service configuration (http)

Note: DO NOT CLONE THIS REPO, COPY WHAT YOU NEED !

## Table of content

- [Web structure project](#web-structure-project)
  - [Goal](#goal)
  - [Table of content](#table-of-content)
  - [File Structure](#file-structure)
  - [State Management](#state-management)
  - [Service Structure](#service-structure)

## File Structure
The file structure is the following :

- **android** (android code)
- **ios** (ios code)
- **lib** (flutter code)
	- **assets** (fonts, images,... )
	- **models** (base model classes for the business logic of the application)
	- **services** (network and local services)
		- **local**
		    - *geolocator_service.dart*
		- **network**
		    - *network_service.dart*
	- **state** (containing all the view-models of the application)
	    - *auth_user_view_model.dart*
	    - *providers.dart*
	- **theme** (theme of the app)
	- **widgets**
		- **screens**
		    - *base_screen.dart*
			- *home_screen.dart*
		- **components**
	- *main.dart*

## State Management
The management of the state is made using **Provider** package.
The *main.dart* entry point of the application is encapsulated inside a **Provider**.

    MultiProvider(
    providers: [
      ChangeNotifierProvider(builder: (context) => TodoViewModel()),
	  ],
	  child: MaterialApp(
	        title: 'Flutter Demo',
	  theme: theme.classic,
	  initialRoute: '/',
	  routes: {
	          '/': (context) => HomeScreen(),
	  '/todos': (context) => TodoScreen(),
	  }),
	  );
	}

The *State objects* have to be declared inside the **state** folder. These are viewmodels.
Then, if a Widget need to use an element of the state, he just has to use it throug **Consumer**

    Consumer<TodoViewModel>(
	  builder: (context, todoItems, child) => Column(
	    children: items(todoItems),
	  ),
	),

   If some data should be fetched from a service, this action has to be done in the **view_model**. By doing this, each component of the app have its own responsibility.

## Service Structure
The service structure is composed of two main packages :

- **local** that contains all the local services (such as geolocalisation service)
- **network** that contains all the remote services configuration (such as REST API)

The http calls are made using the **http** package. This package is very usefull to make REST calls asynchronously.
Service example:

    class TestService extends NetworkService {
	  TestService() : super(url: 'https://jsonplaceholder.typicode.com/todos/1');

	  Future tryAsync() async {
	    Response result = await get(super.url);
	 var t =  jsonDecode(result.body); // decode used to parse JSON response to dart object
	  print(t);
	 return 'ok';
	  }
	}

