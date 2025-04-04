---
    title: COSMO Alpaca Pricing and Trial
    description: COSMO Alpaca Pricing and Trial
---

<style>
    input {
        width: 60px;
        padding: 3px;
    }

    td {
        padding: 5px;
    }
</style>

# COSMO Alpaca Pricing and Trial

COSMO Alpaca has a usage-based pricing model. The usage is billed to the minute based on the container runtime. Containers are used to run isolated Business Central environments used for development, testing, and verifying. The following containers are billed:
- Development BC Containers
- Build Agents (running your pipelines/workflows to build and deploy your app)
- Build BC Containers (started from the pipeline/workflow to verify your app and run automated tests)

Stopped containers are free, as well as all other project management functions in Alpaca. There are scheduled Auto-Stop and Auto-Start features to help you save costs. There's also a dashboard with usage per organization, project and user that helps you to keep control over your costs.

Please use the pricing calculator below to estimate your monthly costs. The first 50 hours of container runtime are [free for trial](#trial).


## Pricing Calculator

<table>
    <tr>
        <td>
            <h3>Consumption</h3>
        </td>
        <td></td>
    </tr>
    <tr>
        <td><label for="noDevelopers"># Developers</label></td>
        <td><input type="number" value="5" id="noDevelopers" /></td>
    </tr>
    <tr>
        <td><label for="workingHours">Developer working hours</label></td>
        <td><input type="number" value="8" id="workingHours" /> h per day</td>
    </tr>
    <tr>
        <td><label for="pipelineRuns">Pipeline/Workflow runs</label></td>
        <td><input type="number" value="8" id="pipelineRuns" /> per day</td>
    </tr>
    <tr>
        <td><label for="pipelineRunTime">Pipeline/Workflow runtime</label></td>
        <td><input type="number" value="0.35" id="pipelineRunTime" step="0.1" /> h</td>
    </tr>
    <tr>
        <td><label for="workingDays">Working days</label></td>
        <td><input type="number" value="21" id="workingDays" /> per month</td>
    </tr>
    <tr style="font-weight: bold;">
        <td><label for="totalConsumption">Estimated consumption</label></td>
        <td><span id="totalConsumption"></span> h per month</td>
    </tr>
    <tr>
        <td>
            <h3>Estimated Costs</h3>
        </td>
        <td></td>
    </tr>
    <tr>
        <td><label for="customer">Customer</label></td>
        <td>
            <input type="radio" name="customer" value="partner" /> BC Partner<br />
            <input type="radio" name="customer" value="nonpartner" /> Non-BC Partner<br />
            <input type="radio" name="customer" value="cosmo" checked /> COSMO project customer<br />
        </td>
    </tr>
    <tr style="font-weight: bold;">
        <td><label for="price">Price (including usage-based discounts)</td>
        <td><span id="price"></span> €/h</td>
    </tr>
    <tr style="font-weight: bold;">
        <td><label for="monthlyCosts">Estimated costs</label></td>
        <td>~ <span id="monthlyCosts"></span> € per month</td>
    </tr>
    <tr>
        <td>
            <h3>Estimated Savings</h3>
        </td>
        <td></td>
    </tr>
    <tr style="font-weight: bold;">
        <td><label for="totalHoursSaved">Hours saved</label></td>
        <td>~ <span id="totalHoursSaved"></span> h per month</td>
    </tr>
    <tr>
        <td><label for="devHourlyRate">Hourly rate for developer</label></td>
        <td><input type="number" value="150" step="10" id="devHourlyRate" /> €/h</td>
    </tr>
    <tr style="font-weight: bold;">
        <td><label for="totalCostsSaved">Costs saved</label></td>
        <td>~ <span id="totalCostsSaved"></span> € per month</td>
    </tr>
</table>

<script>
    function calculate() {
        const noDevelopers = document.getElementById("noDevelopers").value;
        const workingHours = document.getElementById("workingHours").value;
        const pipelineRuns = document.getElementById("pipelineRuns").value;
        const pipelineRunTime = document.getElementById("pipelineRunTime").value;
        const workingDays = document.getElementById("workingDays").value;
        const devHourlyRate = document.getElementById("devHourlyRate").value;
        const customer = document.querySelector('input[name="customer"]:checked').value;

        const totalConsumption = Math.round((noDevelopers * workingHours + pipelineRuns * pipelineRunTime) * workingDays);
        document.getElementById("totalConsumption").innerHTML = totalConsumption.toLocaleString("en-US");

        var price = 1.00;
        if (customer == "partner") {
            if (totalConsumption > 10000) {
                price = 0.5;
            } else if (totalConsumption > 8000) {
                price = 0.55;
            } else if (totalConsumption > 6000) {
                price = 0.6;
            } else if (totalConsumption > 4000) {
                price = 0.7;
            } else if (totalConsumption > 2000) {
                price = 0.8;
            } else {
                price = 0.9;
            }
        }
        document.getElementById("price").innerHTML = price.toLocaleString("en-US", { minimumFractionDigits: 2, maximumFractionDigits: 2 });

        const monthlyCosts = Math.round(totalConsumption * price);
        document.getElementById("monthlyCosts").innerHTML = monthlyCosts.toLocaleString("en-US", { maximumFractionDigits: 0 });

        const totalHoursSaved = Math.round(noDevelopers * 20);
        document.getElementById("totalHoursSaved").innerHTML = totalHoursSaved.toLocaleString("en-US", { maximumFractionDigits: 0 });

        const totalCostsSaved = Math.round(totalHoursSaved * devHourlyRate);
        document.getElementById("totalCostsSaved").innerHTML = totalCostsSaved.toLocaleString("en-US", { maximumFractionDigits: 0 });
    }

    // set pipelineRuns based on noDevelopers but allow user to override
    document.getElementById("noDevelopers").addEventListener("change", function () {
        const noDevelopers = document.getElementById("noDevelopers").value;
        document.getElementById("pipelineRuns").value = Math.round(noDevelopers * 1.5);
    });

    // automatically run calculate when any input changes
    const inputs = document.querySelectorAll("input");
    inputs.forEach(input => {
        input.addEventListener("change", calculate);
    });

    // run calculate on first load
    calculate();
</script>


## Trial

You can try out COSMO Alpaca for free and run containers for up to 50 hours. There is no prior registration needed. The only thing you need to do is to install the [COSMO Alpaca VS Code extension](getting-started/access-and-setup-vsce.md).